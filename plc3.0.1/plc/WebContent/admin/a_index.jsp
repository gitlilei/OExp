<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录页面PLC后台管理系统模板</title>
<link rel="stylesheet" href="admin/css/style.default.css" type="text/css" />
<script type="text/javascript" src="admin/js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="admin/js/custom/general.js"></script>
<script type="text/javascript" src="admin/js/custom/index.js"></script>
<script type="text/javascript" src="admin/js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
</head>


<body class="withvernav">
<div class="bodywrapper">
    <div class="topheader">
        <div class="left">
            <h1 class="logo">PLC.<span>Admin</span></h1>
            <span class="slogan">后台管理系统</span>
            
            <div class="search">
            	<form action="" method="post">
                	<input type="text" name="keyword" id="keyword" value="请输入" />
                    <button class="submitbutton"></button>
                </form>
            </div><!--search-->
            
            <br clear="all" />
            
        </div><!--left-->
        
        <div class="right">
        	<!--<div class="notification">
                <a class="count" href="ajax/notifications.html"><span>9</span></a>
        	</div>-->
            <div class="userinfo">
            	<!--<img src="images/thumbs/avatar.png" alt="" />
                --><span>管理员</span>
            </div><!--userinfo-->
            
            <div class="userinfodrop">
            	<div class="avatar">
                	<a href=""><img src="admin/images/thumbs/avatarbig.png" alt="" /></a>
                    
                    <div class="changetheme">
<!--                     	切换主题: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a> -->
                    </div>
                </div><!--avatar-->
                <div class="userdata">
                	<h4>您好:&nbsp;&nbsp;${userName }&nbsp;老师</h4>
                   <!--  <span class="email">youremail@yourdomain.com</span> -->
                    <ul>
                    	<li><a href="editprofile.html">编辑资料</a></li>
                        <li><a href="accountsettings.html">账号设置</a></li>
                        <li><a href="help.html">帮助</a></li>
                        <li><a href="index.html">退出</a></li>
                    </ul>
                </div><!--userdata-->
            </div><!--userinfodrop-->
        </div><!--right-->
    </div><!--topheader-->
    
    
    <div class="header">
    	<ul class="headermenu">
        	<li class="current"><a href="a_index.jsp"><span class="icon icon-flatscreen"></span>首页</a></li>
            <li><a href="manageblog.html"><span class="icon icon-pencil"></span>心得体会</a></li>
            <li><a href="messages.html"><span class="icon icon-message"></span>查看留言</a></li>
            <li><a href="reports.html"><span class="icon icon-chart"></span>统计报表</a></li>
        </ul>
  	</div><!--header-->
    
    <div class="vernav2 iconmenu">
    	<ul>
        	<li><a href="#formsub" class="editor">人员管理</a>
            	<span class="arrow"></span>
            	<ul id="formsub">
               		<li><a href="user.jsp">用户管理</a></li>
                    <li><a href="role.jsp">角色管理</a></li>
                    <li><a href="power.jsp">权限管理</a></li>
                </ul>
            </li>
           
            
            <li><a href="#addons" class="addons">首页管理</a>
            	<span class="arrow"></span>
            	<ul id="addons">
               		<li><a href="managepost.jsp">公告栏管理</a></li>
                    <li><a href="managenews.jsp">新闻管理</a></li>
                    <li><a href="managepicture.jsp">图片管理</a></li>
                    <li><a href="managelink.jsp">超链接管理</a></li>
                </ul>
            </li>
            
            <li><a href="manageres.jsp" class="elements">资源管理</a></li>
            <li><a href="manageexp.jsp" class="calendar">实验管理</a></li>
            <li><a href="managedis.jsp" class="support">论坛管理</a></li>

            <li><a href="#error" class="error">错误页面</a>
            	<span class="arrow"></span>
            	<ul id="error">
               		<li><a href="notfound.html">404错误页面</a></li>
                    <li><a href="forbidden.html">403错误页面</a></li>
                    <li><a href="internal.html">500错误页面</a></li>
                    <li><a href="offline.html">503错误页面</a></li>
                </ul>
            </li>
            
             <li><a href="#test" class="editor">test</a>
            	<span class="arrow"></span>
            	<ul id="test">
               		<li><a href="user.jsp">test1</a></li>
                    <li><a href="role.jsp">test2</a></li>
                    <li><a href="power.jsp">test3</a></li>
                </ul>
            </li>
            

        </ul>
        <a class="togglemenu"></a>
        <br /><br />
    </div><!--leftmenu-->
        
    <div class="centercontent">
    
        <div class="pageheader">
            <h1 class="pagetitle">控制台</h1>
            <span class="pagedesc">页面的描述内容</span>
            
            <ul class="hornav">
                <li class="current"><a href="#updates">最新更新</a></li>
                <li><a href="#activities">最近活动</a></li>
            </ul>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
        
        	<div id="updates" class="subcontent">
                    <div class="notibar announcement">
                        <a class="close"></a>
                        <h3>dudu~</h3>
                        <p>显示最近的更新</p>
                    </div><!-- notification announcement -->
                    <div class="two_third dashboard_left">
                    	<ul class="shortcuts">
                        	<li><a href="" class="settings"><span>设置</span></a></li>
                            <li><a href="" class="users"><span>用户</span></a></li>
                            <li><a href="" class="gallery"><span>相册</span></a></li>
                            <li><a href="" class="events"><span>事件</span></a></li>
                            <li><a href="" class="analytics"><span>分析</span></a></li>
                        </ul>
                        <br clear="all" />
                    
                    <div class="one_third last dashboard_right">
                    
                        <div class="contenttitle2 nomargintop">
                            <h3>记录</h3>
                        </div><!--contenttitle-->
                    
                    
                    	<ul class="toplist">
                        	<li>
                            	<div>
                                	<span class="three_fourth">
                                    	<span class="left">
                                    		<span class="title"><a href="">学生登录</a></span>
                                        	<span class="desc">总次数</span>
                                    	</span><!--left-->
                                    </span><!--three_fourth-->
                                    <span class="one_fourth last">
                                    	<span class="right">
                                        	<span class="h3">8.1</span>
                                        </span><!--right-->
                                    </span><!--one_fourth-->
                                    <br clear="all" />
                                </div>
                            </li>
                        	<li>
                            	<div>
                                	<span class="three_fourth">
                                    	<span class="left">
                                    		<span class="title"><a href="">资源下载</a></span>
                                        	<span class="desc">总次数</span>
                                    	</span><!--left-->
                                    </span><!--three_fourth-->
                                    <span class="one_fourth last">
                                    	<span class="right">
                                        	<span class="h3">7.8</span>
                                        </span><!--right-->
                                    </span><!--one_fourth-->
                                    <br clear="all" />
                                </div>
                            </li>
                        	<li>
<!--                             	<div>
                                	<span class="three_fourth">
                                    	<span class="left">
                                    		<span class="title"><a href="">在线人数</a></span>
                                        	<span class="desc">总人数</span>
                                    	</span>left
                                    </span>three_fourth
                                    <span class="one_fourth last">
                                    	<span class="right">
                                        	<span class="h3">7.5</span>
                                        </span>right
                                    </span>one_fourth
                                    <br clear="all" />
                                </div> -->
                            </li>
                        </ul>
                        
						<div class="widgetbox">
                            <div class="title"><h3>新建用户</h3></div>
                            <div class="widgetoptions">
                                <div class="right"><a href="">查看所有用户</a></div>
                                <a href="">增加用户</a>
                            </div>
                       </div>
                   
                    </div><!--one_third last-->
                    
                    
            </div><!-- #updates -->
            055299
            <div id="activities" class="subcontent" style="display: none;">
            	&nbsp;
            </div><!-- #activities -->
        
        </div><!--contentwrapper-->
        
        <br clear="all" />
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->
</div>
</body>
</html>