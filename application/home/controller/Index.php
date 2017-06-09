<?php
namespace app\home\controller;
use think\Controller;
use think\Db;
use think\Request;
use think\Url;

class Index extends Base
{

	public function index(){
		
        /*首页幻灯*/
		$banner = DB::name('banner')->field('id,title,picurl,linkurl,intro,target')->where('status',1)->order('orderid')->select();

		/*产品中心*/
		$product = DB::name('product')->field('id,title,picurl')->where('status',1)->order('orderid')->limit('0,4')->select();

		/*解决方案*/
		$solution = DB::name('solution')->field('id,title,intro,picurl')->where('status',1)->order('orderid')->limit('0,4')->select();

        return $this->fetch('index',[
        	  'banner'=>$banner,
        	  'product'=>$product,
        	  'solution'=>$solution,
        	]);
	}
}