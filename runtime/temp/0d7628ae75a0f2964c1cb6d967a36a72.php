<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:55:"D:\sun\public/../application/home\view\index\index.html";i:1494225800;s:55:"D:\sun\public/../application/home\view\public\base.html";i:1495164550;s:54:"D:\sun\public/../application/home\view\public\top.html";i:1495164639;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title><?php echo get_conf('web_name'); ?></title>
  <meta name="description" content="<?php echo get_conf('web_description'); ?>" />
  <meta name="author" content="<?php echo get_conf('web_author'); ?>" />
  <link rel="stylesheet" href="__HOME__/css/amazeui.css" />
  <link rel="stylesheet" href="__HOME__/css/common.min.css" />
  
<link rel="stylesheet" href="__HOME__/css/index.min.css" />

</head>
<body>
  <div class="layout">
    <!--===========layout-header================-->
        <div class="layout-header am-hide-sm-only">
      <div class="header-box" data-am-sticky>
        <!--header start-->
          <div class="container">
            <div class="header">
              <div class="am-g">
                <div class="am-u-lg-2 am-u-sm-12">
                  <div class="logo">
                   <a href="<?php echo url('home/index/index'); ?>"><?php echo get_conf('web_name'); ?></a>
                  </div>
                </div>
                <div class="am-u-md-10">
                  <div class="header-right am-fr">
                    <div class="header-contact">
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
  												<strong><?php echo get_conf('web_hotline'); ?></strong>
  												<span><?php echo get_conf('web_hotline_more'); ?></span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-envelope-o"></i>
  												<strong><?php echo get_conf('web_email'); ?></strong>
  												<span><?php echo get_conf('web_email_more'); ?></span>
  											</div>
  										</div>
                      <div class="header_contacts--item">
  											<div class="contact_mini">
  												<i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
  												<strong><?php echo get_conf('web_address'); ?></strong>
  												<span><?php echo get_conf('web_address_more'); ?></span>
  											</div>
  										</div>
                    </div>
                    <?php if($uid == '0'): ?>
                    <a href="<?php echo url('home/login/index'); ?>" class="contact-btn">
                      <button type="button" class="am-btn am-btn-secondary am-radius">登录</button>
                    </a>&nbsp;&nbsp;
                    <a href="<?php echo url('home/login/reg'); ?>" class="contact-btn">
                      <button type="button" class="am-btn am-btn-secondary am-radius">注册</button>
                    </a>
                    <?php else: ?>
                    <a href="<?php echo url('home/login/logout'); ?>" class="contact-btn">
                      <button type="button" class="am-btn am-btn-secondary am-radius">注销</button>
                    </a>
                    <?php endif; ?>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!--header end-->


        <!--nav start-->
        <div class="nav-contain">
          <div class="nav-inner">
            <ul class="am-nav am-nav-pills am-nav-justify">
              <?php if(is_array($nav) || $nav instanceof \think\Collection): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
      				   <li><a href="<?php echo $vo['url']; ?>"><?php echo $vo['title']; ?></a>
      				   <?php if(!(empty($vo['sub']) || ($vo['sub'] instanceof \think\Collection && $vo['sub']->isEmpty()))): ?>
      				    <ul class="sub-menu">
      				      <?php if(is_array($vo['sub']) || $vo['sub'] instanceof \think\Collection): $i = 0; $__LIST__ = $vo['sub'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
	                  <li class="menu-item"><a href="<?php echo $vo1['url']; ?>"><?php echo $vo1['title']; ?></a></li>
	                  <?php endforeach; endif; else: echo "" ;endif; ?>
	                </ul>
      				   <?php endif; ?>
      				   </li>
      			  <?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
          </div>
        </div>
        <!--nav end-->
      </div>
    </div>

    <!--mobile header start-->
    <div class="m-header">
      <div class="am-g am-show-sm-only">
        <div class="am-u-sm-2">
          <div class="menu-bars">
            <a href="#doc-oc-demo1" data-am-offcanvas="{effect: 'push'}"><i class="am-menu-toggle-icon am-icon-bars"></i></a>
            <!-- 侧边栏内容 -->
            <nav data-am-widget="menu" class="am-menu  am-menu-offcanvas1" data-am-menu-offcanvas >
            <a href="javascript: void(0)" class="am-menu-toggle"></a>

            <div class="am-offcanvas" >
              <div class="am-offcanvas-bar">
              <ul class="am-menu-nav am-avg-sm-1">
                  <?php if(is_array($nav) || $nav instanceof \think\Collection): $i = 0; $__LIST__ = $nav;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;if(!(empty($vo['sub']) || ($vo['sub'] instanceof \think\Collection && $vo['sub']->isEmpty()))): ?>
        					   <li class="am-parent"><a href="<?php echo $vo['url']; ?>"><?php echo $vo['title']; ?></a>
        					    <ul class="am-menu-sub am-collapse ">
        					      <?php if(is_array($vo['sub']) || $vo['sub'] instanceof \think\Collection): $i = 0; $__LIST__ = $vo['sub'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo1): $mod = ($i % 2 );++$i;?>
  		                  <li class=""><a href="<?php echo $vo1['url']; ?>" class=""><?php echo $vo1['title']; ?></a></li>
  		                  <?php endforeach; endif; else: echo "" ;endif; ?>
  		                </ul>
  		               <?php else: ?>
  		               <li><a href="<?php echo $vo['url']; ?>"><?php echo $vo['title']; ?></a>
        					   <?php endif; ?>
        					   </li>
        				  <?php endforeach; endif; else: echo "" ;endif; if($uid == '0'): ?>
                  <li class=""><a href="<?php echo url('home/login/index'); ?>" class="" >登录</a></li>
                  <li class=""><a href="<?php echo url('home/login/reg'); ?>" class="" >注册</a></li>
                  <?php endif; ?>
              </ul>

              </div>
            </div>
          </nav>

          </div>
        </div>
        <div class="am-u-sm-5 am-u-end">
          <div class="m-logo">
            <a href="<?php echo url('home/index/index'); ?>"><?php echo get_conf('web_name'); ?></a>
          </div>
        </div>
      </div>
    <!--mobile header end-->
    </div>
  </div>



    <!--===========layout-container================-->
    
<div class="layout-container">
  <div class="index-page">
    <div data-am-widget="slider" class="am-slider am-slider-c3" data-am-slider='{"controlNav":false,"animation":"fade"}'>
    <ul class="am-slides">
          <?php if(is_array($banner) || $banner instanceof \think\Collection): $i = 0; $__LIST__ = $banner;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
           <li> 
            <div class="am-tab-panel ">
              <div class="index-banner" style="background-image:url('__ROOT__<?php echo $vo['picurl']; ?>');background-repeat: repeat-x; ">
                  <div class="index-mask">
                    <div class="container">
                      <div class="am-g">
                        <div class="am-u-md-10 am-u-sm-centered">
                          <h1 class="slide_simple--title"><?php echo $vo['title']; ?></h1>
                          <p class="slide_simple--text am-text-left">
                            <?php echo $vo['intro']; ?>
                          </p>
                          <div class="slide_simple--buttons">
                            <a href="<?php echo isset($vo['linkurl']) ? $vo['linkurl'] :  '####'; ?>" class="am-btn am-btn-danger">了解更多</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
           </li>
          <?php endforeach; endif; else: echo "" ;endif; ?>
      </ul>
    </div>
  </div>
</div>


    <div class="section">
      <div class="container">
        <div class="section--header">
          <h2 class="section--title">产品中心</h2>
        </div>

        <!--index-container start-->
        <div class="index-container">
          <div class="am-g">
          <?php if(is_array($product) || $product instanceof \think\Collection): $i = 0; $__LIST__ = $product;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
            <div class="am-u-md-3">
              <div class="features_item">
                <a href="<?php echo url('home/product/show',['id'=>$vo['id']]); ?>"><img src="__ROOT__<?php echo $vo['picurl']; ?>" alt="<?php echo $vo['title']; ?>" width="260px" height="200px"></a>
                <h3 class="features_item--title"><a href="<?php echo url('home/product/show',['id'=>$vo['id']]); ?>"><?php echo $vo['title']; ?></a></h3>
              </div>
            </div>
            <?php endforeach; endif; else: echo "" ;endif; ?>
          </div>

          <div class="index-more">
            <a href="<?php echo url('home/product/index'); ?>" class="am-btn am-btn-secondary">更多&nbsp;&nbsp;>></a>
          </div>
        </div>
        <!--index-container end-->
      </div>
    </div>

  <div class="section"  style="border-bottom: 1px solid #e9e9e9;">
    <div class="container">
      <div class="section--header">
        <h2 class="section--title">解决方案</h2>
      </div>

      <!--index-container start-->
      <div class="index-container">
        <div class="am-g">
        <?php if(is_array($solution) || $solution instanceof \think\Collection): $i = 0; $__LIST__ = $solution;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
          <div class="am-u-md-3">
            <div class="service_item" style="text-align:center;margin-top:20px;">
                <img src="__ROOT__<?php echo $vo['picurl']; ?>" alt="<?php echo $vo['title']; ?>" width="100px" height="100px" />
              <h3 class="service_item--title"><?php echo $vo['title']; ?></h3>
              <div class="service_item--text">
                <p><?php echo $vo['intro']; ?></p>
              </div>
              <footer class="service_item--footer"><a href="<?php echo url('home/solution/show',['id'=>$vo['id']]); ?>" class="link -blue_light">更多>></a></footer>
            </div>
          </div>
        <?php endforeach; endif; else: echo "" ;endif; ?>
        </div>
        <div class="index-more">
            <a href="<?php echo url('home/solution/index'); ?>" class="am-btn am-btn-secondary">更多&nbsp;&nbsp;>></a>
          </div>
      </div>
      <!--index-container end-->
    </div>
  </div>


    


  <!--===========layout-footer================-->
  <div class="layout-footer">
    <div class="footer">
      <div style="background-color:#383d61" class="footer--bg"></div>
      <div class="footer--inner">
        <div class="container">
          <div class="footer_main">
            <div class="am-g">
              <div class="am-u-md-3 ">
                <div class="footer_main--column">
                  <strong class="footer_main--column_title">公司简介</strong>
                  <div class="footer_about">
                      <p class="footer_about--text">
                          <?php echo get_conf('web_company'); ?>
                      </p>
                    </div>
                </div>
              </div>

              <div class="am-u-md-9 ">
                <div class="footer_main--column">
                  <strong class="footer_main--column_title">联系我们</strong>
                  <ul class="footer_contact_info">
                    <li class="footer_contact_info--item"><i class="am-icon-phone"></i><span><?php echo get_conf('web_hotline'); ?></span></li>
                    <li class="footer_contact_info--item"><i class="am-icon-envelope-o"></i><span><?php echo get_conf('web_email'); ?></span></li>
                    <li class="footer_contact_info--item"><i class="am-icon-map-marker"></i><span><?php echo get_conf('web_address_more'); ?><?php echo get_conf('web_address'); ?></span></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="__HOME__/js/jquery-2.1.0.js" charset="utf-8"></script>
  <script src="__HOME__/js/amazeui.js" charset="utf-8"></script>
  
<script src="__HOME__/js/common.js" charset="utf-8"></script>


</body>

</html>

