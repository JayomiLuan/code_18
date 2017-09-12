<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>比较运算：</h2>
	${ 1< 2 }<br/>
	${ 2 eq 2 }<br/>
	${ 3 <= 1 }<br/>
	
	<h2>关系运算：</h2>
	${ 1<2 && 3<4 }<br/><!-- 与运算 -->
	${ 1<0 or 4<5 }<br/><!-- 或运算 -->
	
	

</body>
</html>