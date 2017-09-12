<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>用EL表达式取得请求头：</h2>
	${header.accept }<br/>
	<!-- 如果被访问的数据的名字包含特殊字符或运算符，则需要用['']把名字括起来 -->
	${header['User-Agent'] }
</body>
</html>