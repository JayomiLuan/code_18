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
		response.addCookie( new Cookie("password" , "123321") );
	%>


	<h2>使用EL表达式取得Cookie的值：</h2>
	<!-- 使用name和value属性得到Cookie对象的名和值 -->
	${cookie.password.name }<br/>
	${cookie.password.value }

</body>
</html>
