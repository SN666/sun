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






}
