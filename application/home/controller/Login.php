<?php
namespace app\home\controller;
use think\Controller;
use think\Db;
use think\Request;
use think\Url;
use think\Session;

class Login extends Base
{

	public function index(){

		if (Request::instance()->isPost()) {
                $map = [
                    'username' => Request::instance()->post('username'),
                    'password' => Request::instance()->post('password', '', 'mcs'),
                    'status'   => 1
                ];
                $find = Db::name('user')->where($map)->find();
                // 用户名&密码 验证成功
                if ($find) {
                    Session::set('user_id', $find['id']);
                    $this->success('登录成功', 'home/index/index');
                }else{
                    $this->error('登录失败');
                }
        }

        return $this->fetch();


	}

	public function reg(){

		if (Request::instance()->isPost()) {
            $data['username'] = Request::instance()->post('username');
            $find = Db::name('user')->where('username',$data['username'])->find();
            // 用户名
            if ($find) {
                $this->error('注册失败,手机号已存在');
            }else{
                $data['password'] = Request::instance()->post('password', '', 'mcs');
                $data['create_time'] = time();
                $data['mobile'] = Request::instance()->post('username');

                if (Db::name('user')->insert($data)) {
                    $this->success('注册成功', 'home/login/index');
                }else{
                    $this->error('注册失败');
                }
            }
        }

        return $this->fetch();
	}

    public function logout(){
        Session::delete('user_id');
        $this->success('注销成功', 'home/login/index');
    }
}