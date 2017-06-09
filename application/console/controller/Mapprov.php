<?php
namespace app\console\controller;
use think\Db;
use think\Request;
use think\Session;
use app\console\model\Mapprov as ThisModel;

class Mapprov extends Base
{
    /**
	 * [index description]省区域
	 * @return [type] [description]
	 */
	public function index()
	{
		$data = ThisModel::order('id', 'desc')->select();
        //求省区域的会员的地址和经纬度

        $mid = Session::get('manage_id');
        $manager = Db::name('manager')->where(['id'=>$mid,'group_id'=>'7'])->find();
        $userlist = Db::name('user')->where(['prov_cn'=>$manager['prov_cn']])->select();
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

    /*      $json=file_get_contents("http://api.map.baidu.com/geocoder?address=中国&output=json&key=96980ac7cf166499cbbcc946687fb414&city=中国");
          $infolist=json_decode($json);
          $array=array('errorno'=>'1');
          if(isset($infolist->result->location) && !empty($infolist->result->location)){
              $array=array(
                  'lng'=>$infolist->result->location->lng,
                  'lat'=>$infolist->result->location->lat,
                  'errorno'=>'0'
              );
          }
          echo json_encode($array);
    die;*/



}
