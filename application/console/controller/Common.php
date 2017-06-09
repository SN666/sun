<?php
namespace app\console\controller;
use think\Controller;
use think\Db;
use think\Request;

//公共ajax调用控制器
class Common extends Controller
{
    //验证字段是否存在--解决所有表和字段的验证
	public function validonly()
	{
		$valid = true;
		if (Request::instance()->isPOST())
		{ 
			$table = Request::instance()->param('table');//使用传来的表名

			$param = Request::instance()->except(['id'],'post');

			$param['id'] = ['not in',Request::instance()->post('id')];
			
			$isexist = db::name($table)->field('id')->where($param)->find();
			if($isexist){
				 $valid = false;
			}
		}
		else{
            $valid = false;
		}
		$data['valid'] = $valid;
		exit(json_encode($data));
	}
    //上传图片
	public function upload(){
		// 获取表单上传文件 例如上传了001.jpg
		$file = request()->file('file_data');
		//验证
		$validate = [
			     'size'=>get_conf('web_thumb_size'),
			     'ext'=>get_conf('web_thumb_ext')
			];
        $dir = 'tempdir';
		if(Request::instance()->has('dir','param')){
			$dir = Request::instance()->param('dir');
		}
		// 移动到框架应用根目录/public/uploads/ 目录下
		$info = $file->validate($validate)->move(ROOT_PATH . 'public' . DS . $dir);
		if($info){
			$date = date('Ymd');
			$data['code'] = 0;
			$data['img'] = $dir.'/'.$date.'/'.$info->getFilename();
			// 成功上传后 获取上传信息
			$isthumb = get_conf('web_isthumb');
			if($isthumb=='Y'){
                $thumb_width = get_conf('web_thumb_width');//缩略图宽
                $thumb_height = get_conf('web_thumb_height');//缩略图高

				$image = \think\Image::open(ROOT_PATH . 'public' . DS .$data['img']);
				// 按照原图的比例生成一个最大为150*150的缩略图并保存为thumb.png
				$image->thumb($thumb_width, $thumb_height)->save(ROOT_PATH . 'public' . DS .$data['img']);
				
			}

		}else{
			// 上传失败获取错误信息
			//echo $file->getError();
			$data['code'] = -1;
			$data['error'] = $file->getError();
		}
		exit(json_encode($data));
	}

	//删除图片
	public function updel(){
		$filename = input('filename');
			if (!empty($filename)) {
				@unlink(ROOT_PATH . 'public'. DS .$filename);
				$data['code']=1;
			} else {
				$data['code']=2;
			}
		exit(json_encode($data));
	}
    /**
     * 配置管理头部排序
     * @return [type] [description]
     */
	public function sortable(){
		if (Request::instance()->isPOST())
		{ 
			$sort = Request::instance()->post('sort/a');//使用传来的表名
			for($i=0;$i<count($sort);$i++){
				Db::name('webtype')->where('id', $sort[$i])->update(['orderid' => ($i+1)]);
			}
			$data['code']=1;
		}
		else{
            $data['code']=0;
		}
		exit(json_encode($data));
	}
    /**
     * 配置管理内容排序
     * @return [type] [description]
     */
	public function sortConfig(){
		if (Request::instance()->isPOST())
		{ 
			$sort = Request::instance()->post('sort/a');//使用传来的表名
			for($i=0;$i<count($sort);$i++){
				Db::name('webconfig')->where('varname', $sort[$i])->update(['orderid' => ($i+1)]);
			}
			$data['code']=1;
		}
		else{
            $data['code']=0;
		}
		exit(json_encode($data));

	}
    /**
     * 更新配置内容
     * @return [type] [description]
     */
	public function editable(){
		$data = Request::instance()->param();
		Db::name('webconfig')->where('varname', $data['pk'])->update(['varvalue' => $data['value']]);
        $value = Db::name('webconfig')->field('varname,varvalue')->select();
        $arr = [];
        foreach($value as $v){
            $arr[$v['varname']] = $v['varvalue'];
        }
		// 文件路径
        $path = APP_PATH . "common" . DS . "common" . DS . "web.inc.php";
        file_put_contents($path, serialize($arr));
        return true;
	}

    /**
     * 更新图片内容
     * @return [type] [description]
     */
	public function editPicurl(){
		$data = Request::instance()->post();
        $picurl = Db::name('webconfig')->where('varname', $data['field'])->value('varvalue');
        if(!empty($picurl)){
           @unlink(ROOT_PATH . 'public'. DS .$picurl);
        }
		Db::name('webconfig')->where('varname', $data['field'])->update(['varvalue' => $data['picurl']]);
        $value = Db::name('webconfig')->field('varname,varvalue')->select();
        $arr = [];
        foreach($value as $v){
            $arr[$v['varname']] = $v['varvalue'];
        }
		// 文件路径
        $path = APP_PATH . "common" . DS . "common" . DS . "web.inc.php";
        file_put_contents($path, serialize($arr));
        $avatar['src'] = $data['picurl'];
        exit(json_encode($avatar));
	}
    /**
     * [获取省市区三级]
     * @return [type] [description]
     */
	public function getRegion(){
		if (Request::instance()->isPOST())
		{ 
			$pcode = Request::instance()->post('pcode');//父编码
			$level = Request::instance()->post('level');//等级
			if($level==1){
                $data['list'] = db::name('cn_city')->field('code,name')->where('pcode',$pcode)->select();
			}else{
				$data['list'] = db::name('cn_area')->field('code,name')->where('pcode',$pcode)->select();
			}

			$data['code']=1;
		}
		else{
            $data['code']=0;
		}
		exit(json_encode($data));
	}

}