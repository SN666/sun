<?php
namespace app\console\controller;
use think\Db;
use think\Request;
use think\Session;
use app\console\model\Mapprov as ThisModel;

class Mapall extends Base
{
    /**
	 * [index description]省区域
	 * @return [type] [description]
	 */
	public function index()
	{
		$data = ThisModel::order('id', 'desc')->select();
        $userlist = Db::name('user')->select();

        $map = '';
        foreach ($userlist as &$v){
             $adds = $v['prov_cn'].$v['city_cn'].$v['area_cn'].$v['address'];
            $map .= $adds.',';
        }

        return $this->fetch('index', [
            'list'       => $data,
            'map'       => $map
        ]);
	}



}
