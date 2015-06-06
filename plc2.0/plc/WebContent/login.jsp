<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录页面PLC后台管理系统模板</title>
<link rel="stylesheet" href="css/style.default.css" type="text/css" />
<script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery.cookie.js"></script>
<script type="text/javascript" src="js/plugins/jquery.uniform.min.js"></script>

<script type="text/javascript" src="js/custom/general.js"></script>
<script type="text/javascript" src="js/custom/index.js"></script>


<!--[if IE 9]>
    <link rel="stylesheet" media="screen" href="css/style.ie9.css"/>
<![endif]-->
<!--[if IE 8]>
    <link rel="stylesheet" media="screen" href="css/style.ie8.css"/>
<![endif]-->
<!--[if lt IE 9]>
	<script src="js/plugins/css3-mediaqueries.js"></script>
<![endif]-->
</head>

<body class="loginpage">
	<div class="loginbox">
    	<div class="loginboxinner">
        	
            <div class="logo">
            	<h1 class="logo">plc<span>Admin</span></h1>
				<span class="slogan">plc后台管理系统</span>
            </div><!--logo-->
            
            <br clear="all" /><br />
            
           
            

            <form id="login" action="#" method="post">
            	
                <div class="username">
                	<div class="usernameinner">
                    	<input type="text" name="username" id="username" placeholder="Username"/>
                    </div>
                </div>
                
                <div class="password">
                	<div class="passwordinner">
                    	<input type="password" name="password" id="password" placeholder="Password" />
                    </div>
                </div>
                <div class="keep"><input type="checkbox" /> 记住密码</div>
            
                 <div class="nousername">
					<div class="loginmsg">${error}</div>
          		  </div>
                
                
                <button>登录</button>
                
            
            </form>
            
        </div><!--loginboxinner-->
    </div><!--loginbox-->


</body>
</html>