<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//在page范围保存了两个值
		//如果存入的是字符串数字"22","33"，按字符串比较
		pageContext.setAttribute("a1", "278");
		pageContext.setAttribute("a2", "45");
	
	%>
	<h2>测试JSTL中的if标签：</h2>
	<c:if test="${a1<a2 }"><!-- 表达式必须放在EL的\${}中,EL表达式在标记语言的注释中也会被运行 -->
		a1小于a2
	</c:if>
	<c:if test="${ !(a1<a2) }"><!-- 使用if判断相反的条件实现else -->
		a1大于等a2
	</c:if>
	<hr/>
	
	<h2>保存if语句比较的结果：</h2><!-- 把test属性中的表达式的值，以指定的名字，保存到指定的域中，不常用 -->
	<c:if test="${a1<a2 }" var="result" scope="page"></c:if><!-- 此比较只保存结果 -->
	
	比较结果：${result }
</body>
</html>