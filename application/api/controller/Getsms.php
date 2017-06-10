<?php
namespace app\api\controller;

use app\api\controller\Api;
use think\Request;
use think\Response;
use think\Session;
use think\Url;
use think\Controller;
use think\Db;

class Getsms extends Api
{

    //登录
    function login(){

        $mobile = Request::instance()->param('mobile');
        $password = Request::instance()->param('password');
        $info = [];
        if(!empty($mobile) && !empty($password)){

            $member = Db::name('user')->field('id,username,mobile,sd,lon,lat,idcard')->where(['mobile' =>$mobile,'password'=>md5(md5($password))])->find();

            if($member['id']){
                $info = [
                    'code'=>'200',
                    'msg'=>'成功',
                    'data'=>$member
                        ];

            }else{
                $info = ['code'=>'400','msg'=>'用户不存在'];
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
        $data['password']= md5(md5(Request::instance()->param('password')));
        $data['truename'] = Request::instance()->param('realname');
        $data['idcard'] = Request::instance()->param('idcard');
        $data['country'] = Request::instance()->param('country');
        $data['prov_cn'] = Request::instance()->param('prov');
        $data['city_cn'] = Request::instance()->param('city');
        $data['area_cn'] = Request::instance()->param('area');
        $data['address'] = Request::instance()->param('address');
        $data['sd'] = Request::instance()->param('sd');


        $info = [];
        if(!empty($data['account']) && !empty($data['mobile']) && !empty($data['password']) && !empty($data['truename']) && !empty($data['idcard'])
            && !empty($data['country']) && !empty($data['prov_cn']) && !empty($data['city_cn']) && !empty($data['area_cn'])
            && !empty($data['address']) && !empty($data['sd'])){
            //判断账号是否重复
            $is_account = Db::name('user')->where(['account' =>$data['account']])->find();
            if(!empty($is_account['id'])){
                $info = [
                    'code'=>'500',
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

             $member = Db::name('user')->insert($data);

            if($member=='1'){
                $info = [
                    'code'=>'200',
                    'msg'=>'成功'
                ];
                echo json_encode($info);die;

            }else{

                $info = ['code'=>'400','msg'=>'用户不存在'];
                echo json_encode($info);die;

            }

        }else{

            $info = ['code'=>'400','msg'=>'参数不全'];
            echo json_encode($info);die;

        }



    }

    //求经纬度
  function jwd($address,$city){

      $json=file_get_contents("http://api.map.baidu.com/geocoder?address='".$address."'&output=json&key=96980ac7cf166499cbbcc946687fb414&city='".$city."'");
     $infolist=json_decode($json);
     $array=array('errorno'=>'1');
     if(isset($infolist->result->location) && !empty($infolist->result->location)){
         return ['lng'=>$infolist->result->location->lng,'lat'=>$infolist->result->location->lat];
     }

  }



}
