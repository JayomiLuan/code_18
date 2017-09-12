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
		String[] arr = {"aaa","bbb","ccc","ddd","eee"};
		//在使用pageContext向域中添加数据时，不指定域，默认是page范围
		pageContext.setAttribute("arr", arr);
	%>
	<h2>EL表达式对数组的操作：</h2>
	${arr }	<br><!-- 得到的是数组的引入 -->
	${arr[2] }<!-- 指定下标得到数组元素的值 -->
	
</body>
</html>