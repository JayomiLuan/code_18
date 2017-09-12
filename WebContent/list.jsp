<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		List<String> list = new ArrayList<String>();
	list.add("aaa");
	list.add("bbb");
	list.add("ccc");
	list.add("ddd");
	list.add("eee");
		pageContext.setAttribute("list", list);//必须把List存入域中
	%>

	<h2>EL操作List集合：</h2>
	${list }<br/>
	${list[4] }<!-- 和数组的访问试一致 -->
	
	

</body>
</html>