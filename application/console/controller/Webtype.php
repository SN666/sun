<?php
namespace app\console\controller;
use think\Db;
use think\Request;
use think\Url;
use app\console\model\Webtype as ThisModel;
use app\console\model\Webconfig as ConfigModel;

class Webtype extends Base
{
    /**
	 * [index description]列表
	 * @return [type] [description]
	 */
	public function index()
	{
		$where['id']=['not in','1'];
		$data = ThisModel::where($where)->order('id', 'desc')->select();

        return $this->fetch('index', [
            'list'       => $data
        ]);
	}
	/**
     * [create description]添加方法
     * @return [type] [description]
     */
	public function create()
	{
		if (Request::instance()->isPOST())
		{
			$data = Request::instance()->post();
			$result = ThisModel::saveVerify($data);
			if (true === $result) {
                $this->success('新建成功', 'console/Webtype/index');
            } else {
                $this->error($result);
            }
		}

		return $this->fetch();
	}


    /**
     * [renewfield description]列表更新字段
     * @return [type] [description]
     */
	public function renewfield(){
		if (Request::instance()->isPOST())
		{
            $data = Request::instance()->post();
			$validate = validate('Webtype');

			$post = Request::instance()->except(['id'],'post');
			$post = array_keys($post);

            $validate->scene('edit', $post);
			if(!$validate->scene('edit')->check($data)){
			    $this->error($validate->getError());
			}
	        $this_model = new ThisModel();
	        if($this_model->update($data))
            {
			    $this->success('更新成功', 'console/Webtype/index');
			}
			else{
				$this->error($this_model->getError());
			}
		}
	    else{
	    	$this->error('请求方式出错!');
	    }
	}
}
