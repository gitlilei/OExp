<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>dojsp</title>
</head>
<body>
	
	<!-- 传递到iframe的值; 处理传过来的参数 -->
	<%
		String name=request.getParameter("value");
		System.out.println(name);
	%>
	传过来的参数是:<%=name %>

</body>
</html>