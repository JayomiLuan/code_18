<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 如果当前页面不运行EL表达式，则需要在page指令中添加isElIgnored="false"属性 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//在不同的域中添加数据
		
		//在page中添加数据
		//pageContext.setAttribute("name", "page_value", pageContext.PAGE_SCOPE);
		//在其它三个域 中添加数据
		//request.setAttribute("name", "request_value");
		session.setAttribute("name", "session_value");
		application.setAttribute("name" , "application_value");
		
		String msg = "这是一条消息。";
	%>
	
	<!-- 用传统方式显示数据 -->
	<h2>传统方式取得数据的值：</h2>
	<%=pageContext.getAttribute("name" , pageContext.PAGE_SCOPE) %><br/>
	<%=request.getAttribute("name") %><br/>
	<%=session.getAttribute("name") %><br/>
	<%=application.getAttribute("name") %><br/>
	
	<h2>EL表达式显示数据：</h2>
	${ pageScope.name }<br/>
	${ requestScope.name }<br/>
	${ sessionScope.name }<br/>
	${ applicationScope.name }<br/>
	
	<h2>不指定范围的情况下取得数据：</h2>
	${name }
	
	<h2>EL表达式能否取得不在域中的数据？：</h2>
	${msg }

</body>
</html>