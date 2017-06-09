<?php
namespace app\console\validate;

use think\Validate;

class TestAdmin extends Validate
{
    protected $rule = [
        "username|姓名" => "require",
        "sex|性别" => "require",
    ];
}
