<?php
namespace app\api\controller;

use app\api\controller\Api;
use think\Request;
use think\Response;
use think\Session;
use think\Url;
use think\Controller;
use think\Db;

class Index extends Api
{

    //首页
    function index(){

        //轮播图
            $solution = Db::name('solution')->field('id,picurl')->select();
        //webconfig
            $title = Db::name('webconfig')->where(['id'=>'4'])->find();
            $content = Db::name('webconfig')->where(['id'=>'11'])->find();
            $info = [
                'code'=>'200',
                'msg'=>'成功',
                'banner'=>$solution,
                'title'=> $title['varvalue'],
                'content'=>$content['varvalue']
            ];

            echo json_encode($info);die;
    }



   //图表
    function chart(){

        $info = [
            'code'=>'200',
            'msg'=>'成功',
            'watthourmeter'=>111,
            'inverter'=>2
        ];
        echo json_encode($info);die;

    }




}
