<?php
namespace app\console\validate;

use think\Validate;

class Test extends Validate
{
    protected $rule = [
        "title|title" => "require",
    ];
}
