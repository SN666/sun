<?php
namespace app\console\validate;

use think\Validate;

class Mapprov extends Validate
{
    protected $rule = [
        "name|姓名" => "require",
    ];
}
