<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.csust.dao.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.csust.entity.*" %>
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
	<%
		String userid = (String)request.getSession().getAttribute("userName");
		ArrayList<Forum> list = new ArrayList<Forum>();
		ForumDao forumDao = new ForumDao();
		ReplyDao replyDao = new ReplyDao();
		list = forumDao.queryMyPost(userid);
		
		int pageSize = 10;
		int showPage;
		int recordCount= 0;
		if(list!=null){
			recordCount = list.size();
		}
		int pageCount = (recordCount%pageSize ==0)?(recordCount/pageSize):(recordCount/pageSize+1);
	 	String integer = request.getParameter("showPage");
	 	if(integer==null){
	 		integer = "1";
	 	}
	 	showPage = Integer.parseInt(integer);
	 	if(showPage<=1) {
	 		showPage = 1;
	 	}else if(showPage>=pageCount){
	 		showPage = pageCount;
	 	}
	 	int position = (showPage-1)*pageSize;
	 	//System.out.println("list = "+list.size()+"pos = "+position+"recordCount = "+recordCount);
 %>
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
		<div><h2>我的帖子:</h2></div>
		<div class="table">
			<table class="hovertable">
				<tr>
					<th>标题</th> <th>类型</th> <th>作者</th><th>时间</th><th>回复</th>
				</tr>
				<%
    			for(int i = position ; i<position+pageSize&&i<recordCount;i++){
    				Forum forum = list.get(i);
    		 	%>
				<tr>
					<td><a href="forum.jsp?f_id=<%=forum.getF_id()%>"><%=forum.getF_title() %></a></td>
					<td><%=forum.getF_type() %></td>
					<td><%=forum.getF_userid() %></td>
					<td><%=forum.getF_publishdate() %></td>
					<td>回复数:<%=replyDao.queryReplyCount(forum.getF_id()) %></td> 
				</tr>
				<%} %>
			</table>
			<br>
			<br>
			<center>
			 
			 <a href="discussion.jsp?showPage=1">首页</a>
			 <a href="discussion.jsp?showPage=<%=showPage-1%>">上一页</a>
			<% //根据pageCount的值显示每一页的数字并附加上相应的超链接
			  for(int i=1;i<=pageCount;i++){
			 %>
			   <a href="discussion.jsp?showPage=<%=i%>"><%=i%></a>
			<% }
			 %> 
			 <a href="discussion.jsp?showPage=<%=showPage+1%>">下一页</a>
			 <a href="discussion.jsp?showPage=<%=pageCount%>">末页</a>
			 <!-- 通过表单提交用户想要显示的页数 -->
			<!--  <form action="discussion.jsp" method="get">
			  跳转到第<input type="text" name="showPage" size="4">页
			  <input type="submit" name="submit" value="跳转">
			 </form>  -->
			 </center>
			<br>
			<!-- <br>
			<a href="mypost.jsp" class="post">我发布的帖子</a>
			<br> -->
			<br>
			<div class="leav fl" style="border:1px #ccc solid;">
				<form action="../ForumServlet" method="post">
					<label class="mypost">发帖</label>
					<br>
					<label>标题:<input type="text" name="title" id="title"></label>
					<br>
					<br>
					<textarea class="ckeditor" name="editor1"></textarea>
					<br>
					<label>实验问题分类:</label>
					<label><input name="type" type="radio" value="结果" checked="checked"/>结果</label>
					<label><input name="type" type="radio" value="代码"/>代码</label>
					<label><input name="type" type="radio" value="实验类"/>实验类</label>
					<label><input name="type" type="radio" value="实验类"/>段子类</label>
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