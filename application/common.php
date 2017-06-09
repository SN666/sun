<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
/**
 * 模拟tab产生空格
 * @param int $step
 * @param string $string
 * @param int $size
 * @return string
 */
function tab($step = 1, $string = ' ', $size = 4)
{
    return str_repeat($string, $size * $step);
}

/**
 * crypt + md5 混淆加密
 * @param  string $pass 密码明文
 */
function mcs($pass)
{
    return md5(md5($pass));
}

/**
 * 获取自定义配置
 * @return int|string
 */
function get_conf($name)
{
    $conf = config("web_config." . $name);
    return $conf;
}