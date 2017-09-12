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
	Map<String,String> map = new HashMap<String,String>();
	map.put("k1", "aaa");
	map.put("k2", "bbb");
	map.put("k3", "ccc");
	map.put("k4", "ddd");
	pageContext.setAttribute("map", map);
	
%>
	<h2>EL操作Map：</h2>
	${map }<br/>
	${map.k2 }<br/>
	${map['k3'] }<br/>
	
	
	<!-- 以下对对象值进行操作 -->
	<%
		Map<String,User> map2 = new HashMap<String,User>();
		map2.put("u1", new User("user001","张三") );
		map2.put("u2", new User("user002","李四") );
		map2.put("u3", new User("user003","王五") );
		map2.put("u4", new User("user004","赵六") );
		pageContext.setAttribute("map2", map2);
	%>
	<h2>EL操作保存对象的Map：</h2>
	${map2 }<br/>	<!-- 整个Map -->
	${map2.u2 }<br/><!-- key为u2的User对象 -->
	${map2.u3.name }<br/><!-- key为u3的对象的name属性，实际上是在访问getName方法 -->
	
	
</body>
</html>