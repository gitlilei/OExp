<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>PLC远程实验系统</title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/table.css" type="text/css">
<script type="text/javascript" src="../admin/js/plugins/jquery-1.7.min.js"></script>
</head>
<body>
	<div id="header">
		<div class="logo">
		 	<div class="logo_left fl"><img src="images/cslg.png"></div>
		 	<div class="logo_right fl"><img src="images/logo.png"></div>
		 </div>
		<ul>
			<li >
				<a href="../index.jsp">首页</a>
			</li>
			<li >
				<a href="labInfo.jsp">lab简介</a>
			</li>
			<li>
				<a href="manage.jsp">教学管理</a>
			</li>
			<li>
				<a href="resource.jsp">教学资源</a>
			</li>
			<li>
				<a href="study.jsp">实验教学</a>
			</li>
			<li>
				<a href="experiments.jsp">学术成果</a>
			</li>
			<li class="selected">
				<a href="discussion.jsp">论&nbsp;坛</a>
			</li>
		</ul>
	</div>
	<div id="section">

	</div>
	<div id="featured">
		<div><h2>问题讨论:</h2></div>
		<div class="table">
			<table class="hovertable">
				<tr>
					<th>标题</th> <th>类型</th> <th>作者</th><th>时间</th><th>回复</th>
				</tr>
				<tr>
					<td><a href="#">跳转到student/forum.jsp</a></td>
					<td>主题分类</td>
					<td>发帖人</td>
					<td>发帖时间</td>
					<td>回复数</td> 
				</tr>
				<tr>
					<td><a href="#">Item 1Aasdfsfdasfewxcvawdfrafwaefwrfwe</a></td>
					<td>主题分类</td>
					<td>发帖人</td>
					<td>发帖时间</td>
					<td>回复数</td> 
				</tr>
				<tr>
					<td><a href="#">Item 1Aasdfsfdasfewxcvawdfrafwaefwrfwe</a></td>
					<td>主题分类</td>
					<td>发帖人</td>
					<td>发帖时间</td>
					<td>回复数</td> 
				</tr>
			
			</table>
			<br>
			<br>
			<a href="#" class="post">我发布的帖子</a>
			<br>
			<br>
			<div class="leav fl" style="border:1px #ccc solid;">
				<form action="" method="post">
					<label class="mypost">发帖</label>
					<br>
					<label>标题:<input type="text" name="title" id="title"></label>
					<br>
					<br>
					<textarea class="ckeditor" name="editor1"></textarea>
					<br>
					<label>实验问题分类:</label>
					<label><input name="type" type="checkbox" value="result" checked="checked"/>结果</label>
					<label><input name="type" type="checkbox" value="code"/>代码</label>
					<label><input name="type" type="checkbox" value="*"/>实验类</label>
					<label><input name="type" type="checkbox" value="*"/>实验类</label>
					<input type="submit" name="submit" id="submit" value="提交" class="fr">
				</form>
			</div>
		</div>		
	</div>
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

<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
<script type="text/javascript">CKEDITOR.replace( 'editor1' );</script>
<script type="text/javascript">
	$(function($) {
	    //行颜色效果
	    $('td').hover(function() {
	        $(this).parent().css({'background-color':'#ffff00','color':'black'});
	    }, function() {
	        $(this).parent().css({'background-color':'#d4e3e5','color':'black'});
	    });
	});
</script>
</html>