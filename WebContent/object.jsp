<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cn.itcast.day18.domain.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		User user = new User("user001","张三");
		pageContext.setAttribute("user", user);
	%>
	<h2>EL访问对象</h2>
	${user }<br/>
	${ user.id }<br/>
	${ user['name'] }<br/>





</body>
</html>