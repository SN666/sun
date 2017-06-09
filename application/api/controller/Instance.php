<?php
namespace app\api\controller;

use think\Request;
use think\Response;
use think\Session;
use think\Url;
use think\Controller;
use think\Db;

class Instance extends Controller
{

    //添加会员 POST
    public function createmember()
    {
        $r = [];
        $r['mobile'] = Request::instance()->param('mobile');
        if (!empty($r['mobile'])) {

            $members_id = Db::name('member')->where(['mobile' => $r['mobile']])->value('id');
            if (!empty($members_id)) {
                echo json_encode(["status" => '2', "message" => '该手机号已经注册！']);
                die;
            }

        } else {

            echo json_encode(["status" => '2', "message" => '手机必填']);
            die;

        }

        $r['account_number'] = $r['mobile'];

        $r['username'] = Request::instance()->param('username');

        if (empty($r['username'])) {
            echo json_encode(["status" => '2', "message" => '姓名必填']);
            die;
        }

        $r['judge'] = Request::instance()->param('judge');
        if (empty($r['judge'])) {
            $r['judge'] = '1';
        }
        $r['status'] = '1';
        $r['reg_time'] = time();
        $p = Request::instance()->param('password');
        if (empty($p)) {
            $r['password'] = '14e1b600b1fd579f47433b88e8d85291';
        } else {
            $r['password'] = md5(md5($p));
        }
        $r['create_time'] = time();
        //省市区
        $r['prov'] = Request::instance()->param('prov');
        $r['city'] = Request::instance()->param('city');
        $r['area'] = Request::instance()->param('area');
        //省市区ID
        $r['provid'] = Db::name('province')->where(['name' => $r['prov']])->value('id');
        $r['cityid'] = Db::name('city')->where(['name' => $r['city']])->value('id');
        $r['areaid'] = Db::name('area')->where(['name' => $r['area']])->value('id');
        $r['member_source'] = '2';


        $r['code'] = $this->createRandomStr(6);

        $r['address'] = Request::instance()->param('address');  //地址

        $rel = Db::name('member')->insert($r);

        if ($rel) {
            echo json_encode(["status" => '1', "message" => '成功']);
            die;
        }

    }


    //修改会员
    public function editmember()
    {

            $mobile = Request::instance()->param('mobile');
		
            $mobile_new = Request::instance()->param('n_mobile');
            $username = Request::instance()->param('n_username');
            $password = Request::instance()->param('n_password');
			
            $member = Db::name('member')->where(['mobile'=>$mobile])->find();
            if (!empty($member)) {
                 $r = [];
                //如果更改了姓名
                if (!empty($username)) {
                    $r['username'] = $username;
                }

                //如果更改了密码
                if (!empty($password)) {
                    $r['password'] = md5(md5($password));
                }

                Db::name('member')->where(['id' => $member['id']])->update($r);

                echo json_encode(["status" => '1', "message" => '成功']);
                die;
            } else {

                echo json_encode(["status" => '2', "message" => '手机号无效']);
                die;
            }


    }
	


    //会员消费
    public function consumption()
    {

        $mobile = Request::instance()->param('mobile');
        $cost = Request::instance()->param('cost');

		$member = Db::name('member')->where(['mobile' => $mobile])->find();
        if (empty($cost)) {
            echo json_encode(["status" => '2', "message" => '金额必须传']);
            die;
        }
        if (empty($mobile)) {
            echo json_encode(["status" => '2', "message" => '手机号必须传']);
            die;
        }

        //增加用户消费量 selfcost
         Db::name('member')->where(['mobile'=>$mobile])->setInc('selfcost',$cost);

        //生成三级分销金额
          $member = Db::name('member')->where(['mobile'=>$mobile])->find();
          $ordersn = date('YmdHis', time()) . rand(1000, 9999);        //订单号
          self::sale($ordersn,$member['mobile'],$cost);

          if($cost>=10){
           self::giveint($member['id'],$cost);
          }

          echo json_encode(["status" => '1', "message" => '成功']);
          die;
 
    }

    //积分逻辑
   /*还有一个问题，会员在线下超市消费的时候，要求是按照10:3的比例奖励购物积分，，
   消费满10元，送3个购物积分的，消费30元奖励9个购物积分；消费不满10元，
  不送积分，消费超过10元，不满第n个10元，如消费19元，只送3分，
  消费99元，只送3*9=18分*/
    public static function giveint($uid,$cost){

        //设定的比例
        $bl =  Db::name('webconfig')->where(['id'=>47])->value('varvalue');
        $arr = explode(',',$bl);
        $obj  =  floor($cost/$arr[0]);
        $rel = $obj*$arr[1];
        //增加购物积分并且生成记录
        Db::name('member')->where(['id'=>$uid])->setInc('shop_gwint',$rel);
        Db::name('member')->where(['id'=>$uid])->setInc('consume_integral',$rel);
        Db::name('member')->where(['id'=>$uid])->setInc('total_integral',$rel);
        //生成记录
        Db::name('sxlist')->insert(['uid'=>$uid,'cost'=>$cost,'create_time'=>time(),'state'=>'1','int'=>$rel]);


    }


    //三级分销
    public static function sale($number,$mobile,$cost){

        //分销系统
        //分销百分比
        $onebfb = Db::name('webconfig')->where(['varname'=>'web_one'])->value('varvalue');
        $twobfb = Db::name('webconfig')->where(['varname'=>'web_two'])->value('varvalue');
        $threebfb = Db::name('webconfig')->where(['varname'=>'web_three'])->value('varvalue');

        $member_user = Db::name('member')->where(['mobile'=>$mobile])->find();

        $cost_sale = $cost; //此单消费额

        //此订单是否为分销的订单 判断该会员是否有上级
        if($member_user['user1']!=0){
            //判断这个用户是否够资格分销 ，自营满1000
            $member_is = Db::name('member')->where(['id'=>$member_user['user1']])->find();
            if($member_is['selfcost'] >=1000){

                $user1cost = $onebfb/100;
                $row2['usercost1'] = $cost_sale*$user1cost;
                $row2['user1'] = $member_user['user1'];
                $row2['bl1'] = $onebfb;
                //给予会员佣金
                Db::name('member')->where(['id'=>$member_user['user1']])->setInc('withdraw_integral',$row2['usercost1']);

                Db::name('sxlist')->insert(['uid' => $member_user['user1'], 'cost' => $cost_sale, 'create_time' => time(),'state'=>'2','int'=>$cost_sale*$user1cost]);

                //生成记录
                Db::name('intergral')->insert(['uid'=>$member_user['user1'],'mode'=>'佣金','value'=>$row2['usercost1'],'state'=>1,'posttime'=>time(),'go'=>'1']);

            }else{
                //该会员无效佣金
                $row2['usercost1'] = '0';
                $row2['user1'] = $member_user['user1'];
                $row2['bl1'] = 0;
            }

        }

        if($member_user['user2']!=0){
            //判断这个用户是否够资格分销 ，自营满1000 联盟满10000
            $member_is2 = Db::name('member')->where(['id'=>$member_user['user2']])->find();
            if($member_is2['selfcost'] >=1000){

                $user2cost = $twobfb/100;
                $row2['usercost2'] = $cost_sale*$user2cost;
                $row2['user2'] = $member_user['user2'];
                $row2['bl2'] = $twobfb;
                //给予会员佣金
                Db::name('member')->where(['id'=>$member_user['user2']])->setInc('withdraw_integral',$row2['usercost2']);
                Db::name('sxlist')->insert(['uid' => $member_user['user2'], 'cost' => $cost_sale, 'create_time' => time(),'state'=>'2','int'=>$cost_sale*$user2cost]);

                Db::name('intergral')->insert(['uid'=>$member_user['user2'],'mode'=>'佣金','value'=>$row2['usercost2'],'state'=>1,'posttime'=>time(),'go'=>'1']);
            }else{
                //该会员无效佣金
                $row2['usercost2'] = '0';
                $row2['user2'] = $member_user['user2'];
                $row2['bl2'] = 0;
            }

        }

        if($member_user['user3']!=0){
            //判断这个用户是否够资格分销 ，自营满1000 联盟满10000
            $member_is3 = Db::name('member')->where(['id'=>$member_user['user3']])->find();
            if($member_is3['selfcost'] >=1000){

                $user3cost = $threebfb/100;
                $row2['usercost3'] = $cost_sale*$user3cost;
                $row2['user3'] = $member_user['user3'];
                $row2['bl3'] = $threebfb;
                //给予会员佣金
                Db::name('member')->where(['id'=>$member_user['user3']])->setInc('withdraw_integral',$row2['usercost3']);
                Db::name('sxlist')->insert(['uid' => $member_user['user3'], 'cost' => $cost_sale, 'create_time' => time(),'state'=>'2','int'=>$cost_sale*$user3cost]);
                Db::name('intergral')->insert(['uid'=>$member_user['user3'],'mode'=>'佣金','value'=>$row2['usercost3'],'state'=>1,'posttime'=>time(),'go'=>'1']);
            }else{
                //该会员无效佣金
                $row2['usercost3'] = '0';
                $row2['user3'] = $member_user['user3'];
                $row2['bl3'] = 0;
            }

        }
        $row2['number'] = $number; //订单号
        $row2['uid'] =  $member_user['id']; //当前ID
        $row2['posttime'] =  time();
        $row2['total'] =  $cost_sale;
        $row2['state'] =  '2';
        Db::name('salecost')->insert($row2);


    }
	
	
	
//购物积分接口   state=1 增加   =2 减去   int = 1 购物积分      value= 值 intstate = 1 gouwu   = 2 tixian

public function integrals()
{

    $mobile = Request::instance()->param('mobile');
    $value = Request::instance()->param('value');
    $status = Request::instance()->param('status');
    $intstate = Request::instance()->param('intstate');


    if(empty($mobile) || empty($value) || empty($status) ){
        echo json_encode(["status" => '2', "message" => '参数不全']);
        die;
    }
	
	  $member = Db::name('member')->where(['mobile' => $mobile])->find();

    if($intstate==1){

        if($status=='1'){

            Db::name('member')->where(['mobile'=>$mobile])->setInc('shop_gwint',$value);
            //增加购物积分
            Db::name('member')->where(['mobile'=>$mobile])->setInc('consume_integral',$value);
            //增加总积分
            Db::name('member')->where(['mobile'=>$mobile])->setInc('total_integral',$value);

			Db::name('shopintergral')->insert(['uid'=>$member['id'],'mode'=>'线下超市','value'=>$value,'posttime'=>time(),'state'=>'1','go'=>'2']);
			
            echo json_encode(["status" => '1', "message" => '成功']);
            die;
        }

        if($status=='2'){
			
			Db::name('shopintergral')->insert(['uid'=>$member['id'],'mode'=>'线下超市','value'=>$value,'posttime'=>time(),'state'=>'2','go'=>'2']);
			
            Db::name('member')->where(['mobile'=>$mobile])->setDec('consume_integral',$value);
            Db::name('member')->where(['mobile'=>$mobile])->setDec('shop_gwint',$value);
            echo json_encode(["status" => '1', "message" => '成功']);
            die;
        }
    }



    if($intstate==2) {
        if ($status == '1') {
			
			Db::name('shopintergral')->insert(['uid'=>$member['id'],'mode'=>'线下超市','value'=>$value,'posttime'=>time(),'state'=>'1','go'=>'1']);
            //增加提现积分
            Db::name('member')->where(['mobile'=>$mobile])->setInc('withdraw_integral',$value);
            //增加总积分
            Db::name('member')->where(['mobile'=>$mobile])->setInc('total_integral',$value);

            Db::name('member')->where(['mobile' => $mobile])->setInc('shop_txint', $value);
            echo json_encode(["status" => '1', "message" => '成功']);
            die;
        }

        if ($status == '2') {
			
			Db::name('shopintergral')->insert(['uid'=>$member['id'],'mode'=>'线下超市','value'=>$value,'posttime'=>time(),'state'=>'2','go'=>'1']);
            Db::name('member')->where(['mobile' => $mobile])->setDec('withdraw_integral', $value);
            Db::name('member')->where(['mobile' => $mobile])->setDec('shop_txint', $value);
            echo json_encode(["status" => '1', "message" => '成功']);
            die;
        }
    }



    //积分接口
  //  mobile（手机号，必填）
  //  intstate（积分类别，intstate=1 购物积分 ，intstate= 2 提现积分）
   // status（增加 status=1，减少 status=2）
   // value（值，必填）
   // 举个栗子//购物积分减10    ?mobile=15045371690&intstate=1&status=2&value=10


}
	


    /**
     * @param 生成推广码
     * @return string
     */
    public function createRandomStr($length)
    {

        $str = '0123456789abcdefghijklmnopqrstuvwxyz';//62个字符
        $strlen = 36;
        while ($length > $strlen) {
            $str .= $str;
            $strlen += 36;
        }
        $str = str_shuffle($str);
        return substr($str, 0, $length);
    }


    // 新增会员
    function js_addmember()
    {
        ini_set("soap.wsdl_cache_enabled", "0");
        $mobile = '15045371699';
        $cost = 1000;
        $branch_no = '0000';
        $client = new \SoapClient('http://localhost:8088/eShop5/procode/patch/vipservice.asmx?wsdl');
        $v = array('UserID' => '1001', 'Password' => '1001');

        $headers = new \SoapHeader('http://localhost:8088/', 'SoapHeaders', $v);
        $client->__setSoapHeaders(array($headers));//添加soapheader

        $params = array(

            'mobile' => $mobile,
            'branch_no' => $branch_no,
            'cost' => $cost,

        );
        $p = $client->__call('add_acc', array($params));//调用register函数注册


    }



    //消费  微信判断是否付款成功
    function pull()
    {


        $uid = Request::instance()->param('uid');
        $ordernumber = Request::instance()->param('ordernumber');

        $orders =  Db::name('orders')->where(['uid'=>$uid,'number'=>$ordernumber])->find();

        if($orders['state']=='2'){



            echo '1';die;

        }else{

            echo '2';die;
        }



    }



    //消费  微信判断是否付款成功
    function updateall()
    {
        ini_set("soap.wsdl_cache_enabled", 0);
        libxml_disable_entity_loader(false);
        $opts = array(
            'ssl'   => array(
                'verify_peer'          => false
            ),
            'https' => array(
                'curl_verify_ssl_peer'  => false,
                'curl_verify_ssl_host'  => false
            )
        );
        $streamContext = stream_context_create($opts);
        $client = new \SoapClient("http://localhost:8088/eShop5/procode/patch/vipservice.asmx?wsdl",
            array(
                'stream_context'    => $streamContext
            ));


        //第一个参数是命名空间，第二个参数是SoapHeader头的类名，第三个是SoapHeader参数的数组可以写成array
        $v = array('UserID'=>'1001', 'Password'=>'1001');
        $headers = new \SoapHeader("http://localhost:8088/","SoapHeaders",$v, false, SOAP_ACTOR_NEXT);
        $client->__setSoapHeaders(array($headers));

        //循环会员
        $membsers = Db::name('member')->select();

        foreach ($membsers as &$v) {

            $sms1 = array('vip_name' => $v['username'],
                'mobile' => $v['username'],
                'pass' => '111111',
                'branch_no' => '0000',
                'oper_id' => '1001',
                'vip_add' => $v['address']
            );

            //这里是需要注意到地方。调用方法的参数必须是一个数组。而且默认以parameters字段标识为参数数组。真正的参数都要放在$param变量中。
            $return = $client->__soapCall("add_vip", array('parameters' => $sms1));
        }


    }


   //发钱的时候更新所有会员积分 接口
    function updatemember()
    {
        ini_set("soap.wsdl_cache_enabled", 0);
        libxml_disable_entity_loader(false);
        $opts = array(
            'ssl'   => array(
                'verify_peer'          => false
            ),
            'https' => array(
                'curl_verify_ssl_peer'  => false,
                'curl_verify_ssl_host'  => false
            )
        );

        $streamContext = stream_context_create($opts);
        $client = new \SoapClient("http://localhost:8088/eShop5/procode/patch/vipservice.asmx?wsdl",
            array(
                'stream_context'    => $streamContext
            ));

        //第一个参数是命名空间，第二个参数是SoapHeader头的类名，第三个是SoapHeader参数的数组可以写成array
        $v = array('UserID'=>'1001', 'Password'=>'1001');
        $headers = new \SoapHeader("http://localhost:8088/","SoapHeaders",$v, false, SOAP_ACTOR_NEXT);
        $client->__setSoapHeaders(array($headers));


        /*$day = date('Y-m-d');

        //获取今天星期几
        $week = date('w',time());

        //今天发的积分数
        $member_zc = Db::name('put')->where("datetime='".$day."' and state = '1'")->value('value');
        $member_jz = Db::name('put')->where("datetime='".$day."' and state = '2'")->value('value');
        //选择是什么积分
        switch ($week)
        {
            case 1:
              $int = '2';
            break;
            case 2:
               $int = '2';
            break;
            case 3:
                $int = '2';
                break;
            case 4:
                $int = '2';
                break;
            case 5:
                $int = '2';
                break;
            case 6:
                $int = '1';
                break;
        }*/

        $int = '1';
        $member_zc = '10';
        $member_jz = '10';

        $membsers1 = Db::name('member')->where("surplus_power!='0' and member_state = '1'")->select();

        foreach ($membsers1 as &$v) {

            $sms1 = array(
                'mobile' => $v['mobile'],
                'integrals' => $v['surplus_power']*$member_zc,
                'increase' => '1',
                'category' => $int,
            );

            //这里是需要注意到地方。调用方法的参数必须是一个数组。而且默认以parameters字段标识为参数数组。真正的参数都要放在$param变量中。
            $return = $client->__soapCall("change_integrals", array('parameters' => $sms1));
        }

        $membsers2 = Db::name('member')->where("surplus_power!='0' and member_state = '2' and is_zs = '1'")->select();

        foreach ($membsers2 as &$vv) {

            $sms1 = array(
                'mobile' => $vv['mobile'],
                'integrals' => $vv['surplus_power']*$member_jz,
                'increase' => '1',
                'category' => $int,
            );

            //这里是需要注意到地方。调用方法的参数必须是一个数组。而且默认以parameters字段标识为参数数组。真正的参数都要放在$param变量中。
            $return = $client->__soapCall("change_integrals", array('parameters' => $sms1));
        }


    }


    //商城提现
    function tixian()
    {
        $mobile = Request::instance()->param('mobile');
        $value = Request::instance()->param('value');
        $state = Request::instance()->param('state'); //1=+ 2=-

        ini_set("soap.wsdl_cache_enabled", 0);
        libxml_disable_entity_loader(false);
        $opts = array(
            'ssl'   => array(
                'verify_peer'          => false
            ),
            'https' => array(
                'curl_verify_ssl_peer'  => false,
                'curl_verify_ssl_host'  => false
            )
        );

        $streamContext = stream_context_create($opts);
        $client = new \SoapClient("http://localhost:8088/eShop5/procode/patch/vipservice.asmx?wsdl",
            array(
                'stream_context'    => $streamContext
            ));

        //第一个参数是命名空间，第二个参数是SoapHeader头的类名，第三个是SoapHeader参数的数组可以写成array
        $v = array('UserID'=>'1001', 'Password'=>'1001');
        $headers = new \SoapHeader("http://localhost:8088/","SoapHeaders",$v, false, SOAP_ACTOR_NEXT);
        $client->__setSoapHeaders(array($headers));
        if($state==1){

            $sms1 = array(
                'mobile' => $mobile,
                'integrals' => $value,
                'increase' => '1',
                'category' =>  '2',
            );
            $a = '1';
        }
        if($state==2){

            $sms1 = array(
                'mobile' => $mobile,
                'integrals' => $value,
                'increase' => '-1',
                'category' =>  '2',
            );
           $a = '2';
        }

        $return = $client->__soapCall("change_integrals", array('parameters' => $sms1));

        Db::name('log')->insert(['mode'=>'会员提现','uid'=>$mobile,'create_time'=>time(),'code'=>json_encode($return),'orderid'=>$a]);
    }


    //积分兑换
    function shopint()
    {
        $mobile = Request::instance()->param('mobile');
        $value = Request::instance()->param('value');
        ini_set("soap.wsdl_cache_enabled", 0);
        libxml_disable_entity_loader(false);
        $opts = array(
            'ssl'   => array(
                'verify_peer'          => false
            ),
            'https' => array(
                'curl_verify_ssl_peer'  => false,
                'curl_verify_ssl_host'  => false
            )
        );

        $streamContext = stream_context_create($opts);
        $client = new \SoapClient("http://localhost:8088/eShop5/procode/patch/vipservice.asmx?wsdl",
            array(
                'stream_context'    => $streamContext
            ));

        //第一个参数是命名空间，第二个参数是SoapHeader头的类名，第三个是SoapHeader参数的数组可以写成array
        $v = array('UserID'=>'1001', 'Password'=>'1001');
        $headers = new \SoapHeader("http://localhost:8088/","SoapHeaders",$v, false, SOAP_ACTOR_NEXT);
        $client->__setSoapHeaders(array($headers));

        $sms1 = array(
            'mobile' => $mobile,
            'integrals' => $value,
            'increase' => '-1',
            'category' =>  '1',
        );
        $return = $client->__soapCall("change_integrals", array('parameters' => $sms1));

        Db::name('log')->insert(['mode'=>'积分兑换','uid'=>$mobile,'create_time'=>time(),'code'=>json_encode($return),'orderid'=>'']);


    }

    //购物赠送积分
    function jiagouwu()
    {
        $mobile = Request::instance()->param('mobile');
        $value = Request::instance()->param('value');
        ini_set("soap.wsdl_cache_enabled", 0);
        libxml_disable_entity_loader(false);
        $opts = array(
            'ssl'   => array(
                'verify_peer'          => false
            ),
            'https' => array(
                'curl_verify_ssl_peer'  => false,
                'curl_verify_ssl_host'  => false
            )
        );

        $streamContext = stream_context_create($opts);
        $client = new \SoapClient("http://localhost:8088/eShop5/procode/patch/vipservice.asmx?wsdl",
            array(
                'stream_context'    => $streamContext
            ));

        //第一个参数是命名空间，第二个参数是SoapHeader头的类名，第三个是SoapHeader参数的数组可以写成array
        $v = array('UserID'=>'1001', 'Password'=>'1001');
        $headers = new \SoapHeader("http://localhost:8088/","SoapHeaders",$v, false, SOAP_ACTOR_NEXT);
        $client->__setSoapHeaders(array($headers));

        $sms1 = array(
            'mobile' => $mobile,
            'integrals' => $value,
            'increase' => '1',
            'category' =>  '1',
        );
        $return = $client->__soapCall("change_integrals", array('parameters' => $sms1));

        Db::name('log')->insert(['mode'=>'购物','uid'=>$mobile,'create_time'=>time(),'code'=>json_encode($return),'orderid'=>'']);


    }




}
