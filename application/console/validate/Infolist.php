<?php
namespace app\console\validate;

use think\Validate;

class Infolist extends Validate
{
    protected $rule = [
        "title|标题" => "require",
    ];
}
