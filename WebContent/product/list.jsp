<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List,cn.itcast.day17.domain.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- 负责显示所有商品的清单页面 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品列表</title>
</head>
<body>
	<table border="1" align="center" width="500">
		<tr>
			<th><input type="checkbox" /></th>
			<th>商品名称</th>
			<th>价格</th>
			<th>描述</th>
		</tr>
		<c:forEach var="p" items="${list }">
		<tr>
			<td><input type="checkbox" name="id" value="${p.id }"/></td>
			<td>${p.name }</td>
			<td>${p.price }</td>
			<td>${p.description }</td>
		</tr>
		</c:forEach>
	</table>
	
</body>
</html>