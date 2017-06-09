<?php
namespace app\console\controller;
use think\Db;
use think\Request;
use think\Url;
use app\console\model\Mapprov as ThisModel;

class Mapcity extends Base
{
    /**
	 * [index description]省区域
	 * @return [type] [description]
	 */
	public function index()
	{
		$data = ThisModel::order('id', 'desc')->select();

        return $this->fetch('index', [
            'list'       => $data
        ]);
	}

    

}
