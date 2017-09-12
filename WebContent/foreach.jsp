<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,cn.itcast.day18.domain.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>遍历数组：</h2>
	<%
		String[] arr = {"aaa","bbb","ccc"};
		pageContext.setAttribute("arr", arr);
	%>
	<c:forEach var="s" items="${arr }"><!-- item属性中应该是一个集合对象，所以用EL表达式得到page域中的集合对象 -->
		${s },
	</c:forEach>


	<h2>遍历Map：</h2>
	<%
		Map<String,String> map = new HashMap<String,String>();
		map.put("k1", "aaa");
		map.put("k2", "bbb");
		map.put("k3", "ccc");
		map.put("k4", "ddd");
		pageContext.setAttribute("map", map);
	%>
	<c:forEach var="ee" items="${map }">
		${ee.key } -> ${ee.value }<br/><!-- ee代表一个键值对，所以ee.key得到k1..，ee.value得到值 -->
	</c:forEach>
	
	<h2>遍历保存对象的Map：</h2>
	<%
		Map<String,User> map2 = new HashMap<String,User>();
		map2.put("k1", new User("user001","关羽") );
		map2.put("k2", new User("user002","张飞") );
		map2.put("k3", new User("user003","赵云") );
		map2.put("k4", new User("user004","马超") );
		map2.put("k5", new User("user005","黄忠") );
		pageContext.setAttribute("map2", map2);
	%>
	<c:forEach var="ee" items="${map2 }">
		${ee.key } -> ${ee.value.name }<br/><!-- 在得到的对象基础上再.属性名 （getName方法）-->
	</c:forEach>
	

	<h2>遍历保存对象的Map：</h2>
	<%
		String[] arr2 = {"11","22","33","44","55","66","77","88","99","10",};
		
	%>
	<c:forEach var="ee" items="<%=arr2 %>" begin="3" end="7" step="2">
		${ee }<br/>
	</c:forEach>
	<hr>
	<!-- 奇偶行颜色区分 -->
	<!-- varStatue属性指定一个自定义的代表当前遍历状态的对象，其中包括count/index/first/last属性 -->
	<c:forEach var="ee" items="<%=arr2 %>" varStatus="s">
		<font color="${ s.count%2==0?"red":"green" }">${ee }</font><br/>
	</c:forEach>
	

</body>
</html>