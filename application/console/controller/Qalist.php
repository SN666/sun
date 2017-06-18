<?php
namespace app\console\controller;
use think\Db;
use think\Request;
use think\Url;
use app\console\model\Qalist as ThisModel;

class Qalist extends Base
{
    /**
     * [index description]列表
     * @return [type] [description]
     */
    public function index()
    {
        $data = ThisModel::order('id', 'desc')->select();

        return $this->fetch('index', [
            'list'       => $data
        ]);
    }




    /**
     * [delete description]删除方法 多选和单选删除
     * @return [type] [description]
     */
    public function delete(){
        if (Request::instance()->isPOST())
        {
            $id = Request::instance()->post('id/a'); // (/a)方法 将收到的id转为数组
            $delmodel = ThisModel::destroy($id);
            if($delmodel){
                $this->success('删除成功', 'console/Qalist/index');
            }
            else{
                $this->error($delmodel->getError());
            }
        }
        else{
            $this->error('请求方式出错!');
        }
    }

}
