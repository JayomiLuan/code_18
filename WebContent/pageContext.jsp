<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>取得上下文路径</h2>
	<!-- 取得的就是当前项目名（可以动态取得项目名称就可以把静态面页中的项目名替换成当前，便于布署）***** -->
	${ pageContext.request.contextPath }
	
	<form action="${ pageContext.request.contextPath }/xxx/xxx">
	
	</form>

</body>
</html>