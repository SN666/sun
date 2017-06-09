<?php
namespace app\console\controller;
use think\Db;
use think\Request;
use think\Url;

class Clear extends Base
{
	//清理图片
	public function index(){
		/*检测清理垃圾文件*/
		$temp_dir = ROOT_PATH . 'public' . DS . 'tempdir';//需要检测的目录
		$upload_dir = ROOT_PATH . 'public' . DS . 'uploads';//需要检测的目录

		$dh = opendir($temp_dir);
		while (($file = readdir($dh)) !== false) {
            //不清除今天的图片缓存 以免出现错误
			if($file != '.' && $file != '..'&&$file != date('Ymd')){
			//dump($file);
			   $this->deldir($temp_dir . DS . $file);
		    }

		}

		$dh2 = opendir($upload_dir);
		while (($file2 = readdir($dh2)) !== false) {
            //不清除今天的图片缓存 以免出现错误
			if($file2 != '.' && $file2 != '..'&&$file2 != date('Ymd')){
			//dump($file);
			   $this->deldir2($upload_dir . DS . $file2);
		    }

		}
		return $this->fetch('index', [
			'text'=>'垃圾文件',
			]);
	}
    //删除临时图片文件和文件夹
	public function deldir($dir) {
		//先删除目录下的文件：
		$dh=opendir($dir);
		while ($file=readdir($dh)) {
		    if($file!="." && $file!="..") {
		      $fullpath=$dir.DS.$file;
		      if(!is_dir($fullpath)) {
		          unlink($fullpath);
		      } else {
		          $this->deldir($fullpath);
		      }
		    }
		}
		  
		closedir($dh);
		//删除当前文件夹：
		if(rmdir($dir)) {
		    return true;
		} else {
		    return false;
		}
	}
    //清空空文件夹
	public function deldir2($dir) {
		//先删除目录下的文件：
		$a=array_diff(scandir($dir),array('..','.'));       
		if(empty($a)){//目录为空,=2是因为.和..存在            
			rmdir($dir);// 删除空目录           
		}  
		return true;
	}


	//清理日志
	public function log(){
		/*检测清理垃圾文件*/
		$temp_dir = ROOT_PATH . 'runtime' . DS . 'log';//需要检测的目录

		$dh = opendir($temp_dir);
		while (($file = readdir($dh)) !== false) {
            //不清除今天的图片缓存 以免出现错误
			if($file != '.' && $file != '..'){
			   $this->deldir($temp_dir . DS . $file);
		    }

		}
		return $this->fetch('index', [
			'text'=>'日志文件',
			]);
	}

	//清理缓存
	public function cache(){
		/*检测清理垃圾文件*/
		$temp_dir = ROOT_PATH . 'runtime' . DS . 'cache';//需要检测的目录

		$dh = opendir($temp_dir);
		while (($file = readdir($dh)) !== false) {
            //不清除今天的图片缓存 以免出现错误
			if($file != '.' && $file != '..'){
			      $fullpath=$temp_dir.DS.$file;
			      if(!is_dir($fullpath)) {
			          unlink($fullpath);
			      }
		    }

		}
		return $this->fetch('index', [
			'text'=>'缓存文件',
			]);
	}

	//清理临时文件
	public function temp(){
		/*检测清理垃圾文件*/
		$temp_dir = ROOT_PATH . 'runtime' . DS . 'temp';//需要检测的目录

		$dh = opendir($temp_dir);
		while (($file = readdir($dh)) !== false) {
            //不清除今天的图片缓存 以免出现错误
			if($file != '.' && $file != '..'){
			      $fullpath=$temp_dir.DS.$file;
			      if(!is_dir($fullpath)) {
			          unlink($fullpath);
			      }
		    }

		}
		return $this->fetch('index', [
			'text'=>'临时文件',
			]);
	}
 
}