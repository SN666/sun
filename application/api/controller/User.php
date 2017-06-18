<?php
namespace app\api\controller;

use app\api\controller\Api;
use think\Request;
use think\Response;
use think\Session;
use think\Url;
use think\Controller;
use think\Db;

class User extends Api
{

    //登录
    function login(){

        $mobile = Request::instance()->param('mobile');
        $password = Request::instance()->param('password');
        $info = [];
        if(!empty($mobile) && !empty($password)){

            $member = Db::name('user')->field('id,truename,mobile,sd,photo,lng,lat,idcard,prov_cn,area_cn,city_cn,create_time')->where(['mobile' =>$mobile,'password'=>md5($password)])->find();
            $weather = $this->weather($member['city_cn']);
            $weather_arr = json_decode($weather,true);

            if($member['id']){
                //更新登录时间
                Db::name('user')->where(['id'=>$member['id']])->setField('update_time',time());

                $info = [
                    'code'=>'200',
                    'msg'=>'成功',
                    'data'=>$member,
                    'city'=>$weather_arr['data']['city'],
                    'high'=>$weather_arr['data']['forecast'][0]['high'],
                    'low'=>$weather_arr['data']['forecast'][0]['low'],
                    'type'=>$weather_arr['data']['forecast'][0]['type'],
                    'address'=>$member['prov_cn'].$member['city_cn'].$member['area_cn']
                     ];

            }else{
                $info = ['code'=>'500','msg'=>'用户不存在'];
            }

        }else{

            $info = ['code'=>'400','msg'=>'参数不全'];

        }

        echo json_encode($info);die;

    }


    //注册
    function reg(){

        $data['account'] = Request::instance()->param('account');
        $data['mobile'] = Request::instance()->param('mobile');
        $data['password']= md5(Request::instance()->param('password'));
        $data['truename'] = Request::instance()->param('realname');
        $data['idcard'] = Request::instance()->param('idcard');
        $data['country'] = Request::instance()->param('country');
        $data['prov_cn'] = Request::instance()->param('prov');
        $data['city_cn'] = Request::instance()->param('city');
        $data['area_cn'] = Request::instance()->param('area');
        $data['address'] = Request::instance()->param('address');
        $data['village'] = Request::instance()->param('village');
        $data['sd'] = Request::instance()->param('sd');


        $info = [];
        if(!empty($data['account']) && !empty($data['mobile']) && !empty($data['password']) && !empty($data['truename']) && !empty($data['idcard'])
            && !empty($data['country']) && !empty($data['prov_cn']) && !empty($data['city_cn']) && !empty($data['area_cn'])
            && !empty($data['address']) && !empty($data['sd'] ) && !empty($data['village'] )){
            //判断账号是否重复
            $is_account = Db::name('user')->where(['account' =>$data['account']])->find();
            if(!empty($is_account['id'])){
                $info = [
                    'code'=>'900',
                    'msg'=>'账号重复'
                ];
                echo json_encode($info);die;
            }
            //判断手机号是否重复
            $is_mobile = Db::name('user')->where(['mobile' =>$data['mobile']])->find();
            if(!empty($is_mobile['id'])){
                $info = [
                    'code'=>'600',
                    'msg'=>'手机号重复'
                ];
                echo json_encode($info);die;
            }
            //判断SD是否非法


            //判断SD是否重复
            $is_sd = Db::name('user')->where(['sd' =>$data['sd']])->find();
            if(!empty($is_sd['id'])){
                $info = [
                    'code'=>'700',
                    'msg'=>'sd号重复'
                ];
                echo json_encode($info);die;
            }

            //判断身份证号是否重复
            $is_idcard = Db::name('user')->where(['idcard' =>$data['idcard']])->find();
            if(!empty($is_idcard['id'])){
                $info = [
                    'code'=>'800',
                    'msg'=>'身份证号重复'
                ];
                echo json_encode($info);die;
            }

            //求经纬度
             $address_arr = $data['prov_cn'].$data['city_cn'].$data['area_cn'].$data['address'];
             $addressarr = $this->jwd($address_arr,$data['city_cn']);
             $data['lng'] = $addressarr['lng'];
             $data['lat'] = $addressarr['lat'];
             $data['create_time'] = time();

             $member = Db::name('user')->insert($data);

            if($member=='1'){
                $info = [
                    'code'=>'200',
                    'msg'=>'成功'
                ];
                echo json_encode($info);die;

            }else{

                $info = ['code'=>'500','msg'=>'用户不存在'];
                echo json_encode($info);die;

            }

        }else{

            $info = ['code'=>'400','msg'=>'参数不全'];
            echo json_encode($info);die;

        }



    }

    //求经纬度
  function jwd($address,$city){

      $json=file_get_contents("http://api.map.baidu.com/geocoder?address=中国&output=json&key=96980ac7cf166499cbbcc946687fb414&city=中国");
     $infolist=json_decode($json);
     $array=array('errorno'=>'1');
     if(isset($infolist->result->location) && !empty($infolist->result->location)){
         return ['lng'=>$infolist->result->location->lng,'lat'=>$infolist->result->location->lat];
     }

  }


    //修改密码   POST
    function updpass(){

        $account = Request::instance()->param('account');
        $mobile = Request::instance()->param('mobile');
        $data['password']= md5(md5(Request::instance()->param('password')));

        if(!empty($mobile) && !empty($data['password'])){

            $rel = Db::name('user')->where(['mobile'=>$mobile])->update($data);
            if($rel==1){
                $info = ['code'=>'200','msg'=>'成功'];
            }else{
                $info = ['code'=>'500','msg'=>'失败'];
            }
            echo json_encode($info);die;
        }else{
            $info = ['code'=>'400','msg'=>'参数不全'];
            echo json_encode($info);die;
        }



    }

    //获取天气
    function weather($city){

        $ch = curl_init();
        $timeout = 5;
        curl_setopt($ch, CURLOPT_URL, 'http://wthrcdn.etouch.cn/weather_mini?city='.$city);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
        $file_contents = curl_exec($ch);
        curl_close($ch);

        return gzdecode($file_contents);


    }

    //问题属性
    function problemtype(){

        $qalist = Db::name('qa')->where(['status' =>'1'])->field('id,title')->select();
        echo json_encode($qalist);die;

    }

    //问题反馈
    function problem(){

        $data['title'] = Request::instance()->param('title');
        $data['msg'] = Request::instance()->param('msg');
        if(!empty($data['msg']) && !empty($data['title'])){

            $rel = Db::name('qalist')->insert($data);
            if($rel==1){
                $info = ['code'=>'200','msg'=>'成功'];
            }else{
                $info = ['code'=>'500','msg'=>'失败'];
            }
            echo json_encode($info);die;
        }else{
            $info = ['code'=>'400','msg'=>'参数不全'];
            echo json_encode($info);die;
        }


    }


    //修改电话
    function pmobile(){

        $mobile = Request::instance()->param('mobile');
        $data['mobile'] = Request::instance()->param('nmobile');
        if(!empty($mobile) && !empty($data['mobile'])){

            $rel = Db::name('user')->where(['mobile'=>$mobile])->update($data);
            if($rel==1){
                $info = ['code'=>'200','msg'=>'成功'];
            }else{
                $info = ['code'=>'500','msg'=>'失败'];
            }
            echo json_encode($info);die;
        }else{
            $info = ['code'=>'400','msg'=>'参数不全'];
            echo json_encode($info);die;
        }

    }

    //修改地址
    function paddress(){
        $uid = Request::instance()->param('uid');
        $data['prov'] = Request::instance()->param('prov');
        $data['city'] = Request::instance()->param('city');
        $data['area'] = Request::instance()->param('area');
        $data['village'] = Request::instance()->param('village');

            $rel = Db::name('user')->where(['id'=>$uid])->update($data);
            if($rel==1){
                $info = ['code'=>'200','msg'=>'成功'];
            }else{
                $info = ['code'=>'500','msg'=>'失败'];
            }
            echo json_encode($info);die;
    }



}
