<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>PLC远程实验系统</title>
	<link rel="stylesheet" type="text/css" href="student/css/reset.css">
	<link rel="stylesheet" type="text/css" href="student/css/style.css">
    <script type="text/javascript" src="student/js/pic.js"></script>
</head>
<body>
	<div id="header">
		 <div class="logo">
		 	<div class="logo_left fl"><img src="student/images/cslg.png"></div>
		 	<div class="logo_right fl"><img src="student/images/logo.png"></div>
		 </div>
		<ul>
			<li class="selected">
				<a href="index.jsp">首页</a>
			</li>
			<li>
				<a href="student/labInfo.jsp">lab简介</a>
			</li>
			<li>
				<a href="student/manage.jsp">教学管理</a>
			</li>
			<li>
				<a href="student/resource.jsp">教学资源</a>
			</li>
			<li>
				<a href="student/study.jsp">实验教学</a>
			</li>
			<li>
				<a href="student/experiments.jsp">学术成果</a>
			</li>
			<li>
				<a href="student/discussion.jsp">论&nbsp;坛</a>
			</li>
		</ul>
	</div>
	<div id="featured">
		<div>
			<div class="left fl">
				<div class="left_top fl">
					<span>公告栏</span>
				</div>
				<div class="clear"></div>
				<div class="left_body">
					<ul>
						<li><a href="#"><i>&gt;&nbsp;&nbsp;</i>第十一周教学工作安排 <br> 2015-05-11</a></li>
						<li><a href="#"><i>&gt;&nbsp;&nbsp;</i>
						2015届毕业设计(论文)中期抽查学生名单 <br>2015-05-11</a></li>
						<li><a href="#"><i>&gt;&nbsp;&nbsp;</i>
						计通学院研究生开展创新项目学术报告会 <br>2015-04-22</a></li>
						<li><a href="#"><i>&gt;&nbsp;&nbsp;</i>
						计通学院组织开展如何练好习大大传授的"八字真经"主题团日研讨会 <br>2015-04-12</a></li>
						<li><a href="#"><i>&gt;&nbsp;&nbsp;</i>5月5日大二大三旷课情况通报 <br>2015-04-06</a></li>
					</ul>				
				</div>
			</div>
			<div class="middle fl">

				<div class="middle_top fl">
					<span class="fl">新闻中心<i><a class="fr" href="#" >更多...</a></i></span>
				</div>

				<div class="clear"></div>

				<div class="picRoll">
					<div id="picContainer">
					    <div id="picList" style="left: -420px;"><!-- 放图片的容器 -->
					        <img src="student/img/1.jpg" alt="1"/>
					        <img src="student/img/5.jpg" alt="1"/>
					        <img src="student/img/2.jpg" alt="2"/>
					        <img src="student/img/3.jpg" alt="3"/>
					        <img src="student/img/4.jpg" alt="4"/>
					        <img src="student/img/5.jpg" alt="5"/>
					        <img src="student/img/1.jpg" alt="5"/>
					    </div>
					    <div id="picButtons"> <!-- 图片下面的按钮 -->
					        <span index="1" class="on"></span>
					        <span index="2"></span>
					        <span index="3"></span>
					        <span index="4"></span>
					        <span index="5"></span>
					    </div>
					    <a href="javascript:;" id="picPrev" class="picArrow">&lt;</a>  <!-- 鼠标移动到图片上 左箭头 -->
					    <a href="javascript:;" id="picNext" class="picArrow">&gt;</a>  <!-- 鼠标移动到图片上 右箭头 -->
					</div>
				</div>

				<div class="middle_body">
					<ul>
						<li><a href="#">[2015-05-11]我校与长沙景嘉微电子有限公司举行"校企合作协议"签约暨"教育实习基地"授牌仪式 </a></li>
						<li><a href="#">[2015-05-11]湖南大学李仁发教授到我校进行工程教育专业认证讲学指导 </a></li>
						<li><a href="#">[2015-04-22]
						湖南大学唐卓博士来我院进行学术交流及讲座 </a></li>
						<li><a href="#">[2015-04-12]
						计算机与通信工程学院顺利举办中层干部培训会议 </a></li>
						<li><a href="#">[2015-04-02]5月5日大二大三旷课情况通报 </a></li>
					</ul>
				</div>
			</div>

			<div class="right fl">
				<div class="login">
					欢迎:&nbsp;&nbsp;  ${userName }&nbsp;&nbsp;同学
				</div>
			
				<div class="right_top">相关链接:</div>
				
				<div class="right_link">
					<ul>
						<li><a href="http://www.csust.edu.cn/pub/cslgdx/">长沙理工大学首页 </a></li>
						<li><a href="http://pt.csust.edu.cn">网络教学平台 </a></li>
						<li><a href="http://www.csust.edu.cn/pub/tsg/library.html"> 图书馆</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class=".clear"></div>
	<div id="footer">
		<div>
			<p>
				<span>2015 &copy; PLC Remote Experiment Center.</span><a href="#" >csust版权所有</a> | <a href="#" >联系我们</a>
			</p>
			<ul>
				<li id="facebook">
					<a href="#">facebook</a>
				</li>
				<li id="twitter">
					<a href="#">twitter</a>
				</li>
				<li id="googleplus">
					<a href="#">googleplus</a>
				</li>
				<li id="rss">
					<a href="#" >rss</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>