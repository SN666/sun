<?php
namespace app\console\validate;

use think\Validate;

class Webtype extends Validate
{
    protected $rule =   [
        'title|配置组名称'  => 'require|max:30|unique:webtype',
    ];

}
