<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.csust.dao.*" %>
<%@ page import="com.csust.entity.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>PLC远程实验系统</title>
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/forum.css">
    <script type="text/javascript" src="js/pic.js"></script>

</head>
<body>
	<%
		//根据forumid查找帖子
		int forumid = Integer.parseInt(request.getParameter("f_id"));
		ForumDao forumDao = new ForumDao();
		Forum forum = forumDao.queryOnePost(forumid);
		//根据forumid查找回复	
			ArrayList<ReplyPost> replyList = new ArrayList<ReplyPost>();
			ReplyDao replyDao = new ReplyDao();
			replyList = replyDao.queryAllReply(forumid);
		//分页
			int pageSize = 5;
			int showPage;
			int recordCount= 0;
			if(replyList!=null){
				recordCount = replyList.size();
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
	<div id="featured" style="margin:0;width:100%;">
		<div class="fup">
			<div class="fleft fl">
				<dl>
					<dt>发帖人:<%=forum.getF_userid() %></dt> 
					<dd>类型:<%=forum.getF_type() %></dd> 
					<dd>时间:<%=forum.getF_publishdate() %></dd>  
				</dl> 
			</div>
			<div class="fright fl">
				<dl>
					<dt>标题：<%=forum.getF_title() %></dt>
					<dd>内容：<%=forum.getF_content() %></dd>
				</dl> 
			</div>
		</div>
		
		<div class="clear"></div>
		<%
			for(int i = position ; i<position+pageSize&&i<recordCount;i++){
				ReplyPost replyPost = replyList.get(i);
		 %>
		 
		<div class="fmiddle">
			<div class="fleft fl">
				<dl>
					<dt>回帖人：<%=replyPost.getFr_replyuserid() %></dt> 
					<!-- <dd>专业：计科</dd>  -->
					<dd>时间:<%=replyPost.getFr_date() %></dd>  
				</dl> 
			</div>
			
			<div class="fright fl">
				<dl>
					<!-- <dt>标题:代码问题</dt> -->
					<dd>回复内容:<%=replyPost.getFr_reply() %></dd>
				</dl> 
			</div>		
			<div class="clear"></div>
		</div><!-- fmiddle -->
		

		<%} %>
		<br>
		<br>
		<center>
		 <a href="forum.jsp?showPage=1&f_id=<%=forumid%>">首页</a>
			 <a href="forum.jsp?showPage=<%=showPage-1%>&f_id=<%=forumid%>">上一页</a>
			<% //根据pageCount的值显示每一页的数字并附加上相应的超链接
			  for(int i=1;i<=pageCount;i++){
			 %>
			   <a href="forum.jsp?showPage=<%=i%>&f_id=<%=forumid%>"><%=i%></a>
			<% }
			 %> 
			 <a href="forum.jsp?showPage=<%=showPage+1%>&f_id=<%=forumid%>">下一页</a>
			 <a href="forum.jsp?showPage=<%=pageCount%>&f_id=<%=forumid%>">末页</a>
		</center>	 
			 
		
		<div class="fdown" >
		<br><br>
			<div class="editor">
				<form action="../ReplyServlet?forumid=<%=forumid%>" method="post">
					<label>我来回复:</label>
		<br><br>
					<textarea class="ckeditor" name="editor1"></textarea>
		<br>
					<input type="submit" name="submit" id="submit" value="提交" class="fr">
				</form>
		<br><br>
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
</html>