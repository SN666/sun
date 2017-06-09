<?php
namespace app\home\controller;
use think\Db;
use think\Request;
use think\Url;
use think\Controller;
use think\Session;

class Base extends Controller
{
	/**
	 * [_initialize description]初始化方法
	 * @return [type] [description] 权限和菜单控制
	 */
	protected function _initialize() {		
		$nav = DB::name('nav')->field('id,title,url')->where('parentid',0)->where('status',1)->order('orderid')->select();
		foreach ($nav as &$v) {
			$subnav = DB::name('nav')->field('id,title,url')->where('parentid',$v['id'])->where('status',1)->order('orderid')->select();
			foreach($subnav as &$sv){
                $sv['url'] = $this->getUrl($sv['url']);
			}
			$v['url'] = $this->getUrl($v['url']);
			$v['sub'] = $subnav;
		}
		$this->assign('nav', $nav);

        $uid = 0;
		if (Session::has('user_id')) {
            $uid = Session::get('user_id');
        }
        $this->assign('uid', $uid);

        /*友情链接*/
		$link = DB::name('link')->field('title,picurl,url')->where('status',1)->order('orderid')->select();		
		$this->assign('link', $link);
	}

	public function getUrl($url){
		if($url!='#'){
		    if(strstr($url,"?")){
				$params = strstr($url, '?');//加了？的参数
				$rurl = str_replace($params,'',$url);//去掉参数的方法名
				$url = url($rurl).$params;
			}
			else{
				$url = url($url);
			}
		}
		return $url;

	}
  

}