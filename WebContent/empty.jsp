<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,cn.itcast.day18.domain.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
//		List<String> list = new ArrayList<String>();//是集合对象存在，但内容为空的情况(true)
		List<String> list = null;//true
//		User user = null;//用户对象为空的情况
		User user = new User();
		
		//list.add("aa");
		
		pageContext.setAttribute("user", user);
		pageContext.setAttribute("str", null);//为""和null两种情况
		pageContext.setAttribute("list", list);
	%>
	<h2>empty运算符：</h2>
	${empty user }<br/>
	${empty str }<br/><!-- 如果此字符串为空串或null，返回true -->
	${empty list }<br/><!-- 如果此集合为空或null，返回true -->

</body>
</html>