<?php
/*array(菜单名，菜单样式，是否显示)*/
//error_reporting(E_ALL);
/*
$acl_inc[$i]['low_leve']['global']  global是model
每个action前必须添加eq_前缀'eq_websetting'  => 'at1','at1'表示唯一标志,可独自命名,eq_后面跟的action必须统一小写
*/
$acl_inc =  array();
$i=0;

$acl_inc[$i]['low_title'] = array('控制台','fa fa-home',1);
$acl_inc[$i]['low_leve']['dashboard']= array( "控制台" =>array('index',
											array(
												 "列表" 		=> 'board',
												)
											),
										   "data" => array(
										   		//控制台
												'eq_index'  => 'board',
											)
							);
$i++;
$acl_inc[$i]['low_title'] =  array('全局设置','fa fa-cog');
$acl_inc[$i]['low_leve']['webconfig']= array( "配置管理" =>array('index',
                                              array(
												 "列表" 		=> 'webconfig1',
												 "添加" 		=> 'webconfig2',
											  )),
										   "data" => array(
										   		//配置管理
												'eq_index'      => 'webconfig1',
												"eq_create" 	=> 'webconfig2',
											)
							);
$acl_inc[$i]['low_leve']['webtype']= array( "配置组管理" =>array('index',
                                              array(
                                                "列表"       => "webtype1",
                                                "添加"       => "webtype2",
                                                "修改"       => "webtype3",
                                        )),
                                        "data" =>array(
                                                "eq_index"        => "webtype1",
                                                "eq_create"       => "webtype2",
                                                "eq_renewfield"   => "webtype3",
                                        ));
$i++;
$acl_inc[$i]['low_title'] =  array('管理模块','fa fa-user');
$acl_inc[$i]['low_leve']['manager']= array( "管理员管理" =>array('index',
                                              array(
												 "列表" 		=> 'man1',
												 "添加" 		=> 'man2',
												 "修改" 		=> 'man3',
												 "删除" 		=> 'man4',
											  )),
										   "data" => array(
										   		//配置管理
												'eq_index'  => 'man1',
												'eq_create'  => 'man2',
												'eq_update'  => 'man3',
												'eq_renewfield'  => 'man3',
												'eq_delete'  => 'man4',
											)
							);
// 管理组管理
$acl_inc[$i]["low_leve"]["authgroup"]= array( "管理组管理" =>array("index",
                                        array(
                                                "列表"       => "authgroup1",
                                                "添加"       => "authgroup2",
                                                "修改"       => "authgroup3",
                                                "删除"       => "authgroup4",
                                                "权限"       => "authgroup5",
                                        )),
                                        "data" =>array(
                                                "eq_index"        => "authgroup1",
                                                "eq_create"       => "authgroup2",
                                                "eq_update"       => "authgroup3",
                                                "eq_renewfield"   => "authgroup3",
                                                "eq_delete"       => "authgroup4",
                                                "eq_setup"        => "authgroup5",
                                        ));

$i++;
$acl_inc[$i]['low_title'] =  array('用户管理','fa fa-users');
// 用户管理
$acl_inc[$i]["low_leve"]["user"]= array( "会员管理" =>array("index",
                                        array(
                                                "列表"       => "user1",
                                                "添加"       => "user2",
                                                "修改"       => "user3",
                                                "删除"       => "user4",
                                        )),
                                        "data" =>array(
                                                "eq_index"        => "user1",
                                                "eq_create"       => "user2",
                                                "eq_update"       => "user3",
                                                "eq_renewfield"   => "user3",
                                                "eq_delete"       => "user4",
                                        ));
$i++;
$acl_inc[$i]['low_title'] =  array('轮播图管理','fa fa-adjust');
// 解决方案
$acl_inc[$i]["low_leve"]["solution"]= array( "轮播图列表" =>array("index",
                                        array(
                                                "列表"       => "solution1",
                                                "添加"       => "solution2",
                                                "修改"       => "solution3",
                                                "删除"       => "solution4",
                                        )),
                                        "data" =>array(
                                                "eq_index"        => "solution1",
                                                "eq_create"       => "solution2",
                                                "eq_update"       => "solution3",
                                                "eq_renewfield"   => "solution3",
                                                "eq_delete"       => "solution4",
                                        ));
$i++;
$acl_inc[$i]['low_title'] =  array('清理垃圾','fa fa-cut');
// 清洁管理
$acl_inc[$i]["low_leve"]["clear"]= array( "图片清理" =>array("index",
                                        array(
                                                "列表"       => "clear1",
                                        )),
                                        "临时文件清理" =>array("temp",
                                        array(
                                                "列表"       => "temp1",
                                        )),
                                        "日志清理" =>array("log",
                                        array(
                                                "列表"       => "log1",
                                        )),
                                        "缓存清理" =>array("cache",
                                        array(
                                                "列表"       => "cache1",
                                        )),
                                        "data" =>array(
                                                "eq_index"        => "clear1",
                                                "eq_temp"         => "temp1",
                                                "eq_log"          => "log1",
                                                "eq_cache"        => "cache1",
                                        ));

$i++;
$acl_inc[$i]['low_title'] =  array('工具','fa fa-wrench');
$acl_inc[$i]['low_leve']['formbuilder']= array( "表单构建器" =>array('index',
                                              array(
                                                 "列表"       => 'build',
                                              )),
                                           "data" => array(
                                                'eq_index'  => 'build',
                                            )
                            );
$acl_inc[$i]['low_leve']['generate']= array( "代码生成器" =>array('index',
                                              array(
                                                 "列表"       => 'gener1',
                                              )),
                                           "data" => array(
                                                'eq_index'  => 'gener1',
                                                'eq_run'  => 'gener1',
                                                'eq_cmd'  => 'gener1',
                                            )
                            );
$i++;

$acl_inc[$i]['low_title'] =  array('地图标注','fa fa-wrench');
$acl_inc[$i]["low_leve"]["mapall"]= array( "全国用户分布" =>array("index",
    array(
        "列表"       => "mapall1",

    )),
    "data" =>array(
        "eq_index"        => "mapall1",

    ));
$acl_inc[$i]["low_leve"]["mapprov"]= array( "省用户分布" =>array("index",
                                        array(
                                                "列表"       => "mapprov1",

                                        )),
                                        "data" =>array(
                                                "eq_index"        => "mapprov1",

                                        ));
$acl_inc[$i]["low_leve"]["mapcity"]= array( "市用户分布" =>array("index",
                                       array(
                                           "列表"       => "mapcity1",

                                       )),
                                       "data" =>array(
                                           "eq_index"        => "mapcity1",

                                       ));
$acl_inc[$i]["low_leve"]["maparea"]= array( "区用户分布" =>array("index",
    array(
        "列表"       => "maparea1",

    )),
    "data" =>array(
        "eq_index"        => "maparea1",

    ));