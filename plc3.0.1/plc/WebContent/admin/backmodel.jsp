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
                	<a href=""><img src="images/thumbs/avatarbig.png" alt="" /></a>
                    
                    <div class="changetheme">
                    	切换主题: <br />
                    	<a class="default"></a>
                        <a class="blueline"></a>
                        <a class="greenline"></a>
                        <a class="contrast"></a>
                        <a class="custombg"></a>
                    </div>
                </div><!--avatar-->
                <div class="userdata">
                	<h4>Juan</h4>
                    <span class="email">youremail@yourdomain.com</span>
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
        testtstetste
       
        
        <br clear="all" />
        
	</div><!-- centercontent -->
    
    
</div><!--bodywrapper-->

</body>
</html>