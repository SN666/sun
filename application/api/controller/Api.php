<?php
namespace app\api\controller;

use think\Db;
use think\Cache;
use think\Request;
use think\Controller;

class Api extends Controller
{
    protected function _initialize() {
        header("Content-type:text/html;charset=utf-8");
    }

    /**
     * [html输出内容]
     * @param  [type] $data [需要输出的内容]
     * @return [type]       [直接输出结果]
     */
    protected function make_show($data){
        echo '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />';   
        echo '<meta http-equiv="Cache-Control" content="no-cache" />';  
        echo '<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />';    
        echo '<meta name="apple-mobile-web-app-capable" content="yes" />';  
        echo '<meta name="apple-mobile-web-app-status-bar-style" content="black" />';   
        echo '<meta name="format-detection" content="telephone=yes" />';    
        
        echo '<style type="text/css">  #divs{ word-wrap: break-word; word-break: normal;  } img{width:100%} </style>';
        echo "<div id='divs'>".htmlspecialchars_decode($data)."</div>";
    }


    protected function make_show_new($title,$time,$author,$content){
		echo '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />';	
		echo '<meta http-equiv="Cache-Control" content="no-cache" />';	
		echo '<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />';	
		echo '<meta name="apple-mobile-web-app-capable" content="yes" />';	
		echo '<meta name="apple-mobile-web-app-status-bar-style" content="black" />';	
		echo '<meta name="format-detection" content="telephone=yes" />';	
        echo '<style type="text/css"> ';
        echo 'img {width:100%;} ';
        echo '</style>';
        echo '<p style="text-align: center;">';
        echo "<span style='font-size: 20px;'>{$title}</span>";
        echo '</p>';
        echo '<p style="text-align: center;">';
        echo "<span style='font-size: 16px; color: rgb(127, 127, 127);'>发布时间：{$time}      来源：{$author}</span><br/>";
        echo '</p>';
        echo htmlspecialchars_decode($content);
    }
    /**
     * curl post
     */
    protected function request_post($url, $post_data)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);// post数据
        curl_setopt($ch, CURLOPT_POST, 1);// post的变量
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
        $output = curl_exec($ch);
        curl_close($ch);
        return $output;
    }

    protected function md5s($data){
        return md5(md5($data));
    }

    protected function format_date($time){
        $t=time()+1-$time;
        $f=array(
            '31536000'=>'年',
            '2592000'=>'个月',
            '604800'=>'星期',
            '86400'=>'天',
            '3600'=>'小时',
            '60'=>'分钟',
            '1'=>'秒'
        );
        foreach ($f as $k=>$v)    {
            if (0 !=$c=floor($t/(int)$k)) {
                return $c.$v.'前';
            }
        }
    }
}