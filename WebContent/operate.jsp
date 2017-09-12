<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		
	%>
	<h2>EL中的运算符：</h2>
	${ 1+2 }<br/>
	${ 3/4 }<br/><!-- ${ 3 div 4} -->
	${ "4"+5 }<br/><!-- 把字符串转换成数字参与运算 -->
	${ '3'-7 }<br/><!-- 在EL中，不区分字符串和字符 -->
	${ "a"-7 }<br/><!-- 如果是一个不能正确转换成数字的字符串，则出现错误 -->
	\${ "a"-7 }<br/><!-- 在EL表达式前加反斜杠，则表达式不被运算，原样显示 -->
	
	
	
</body>
</html>