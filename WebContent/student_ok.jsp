<%@page import="com.sykjxy.entity.Student"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head>
<title>操作成功!</title>
<meta charset=utf-8">
</head>

<body>
	<script type="text/javascript">

	
	<%
	 request.setCharacterEncoding("utf-8");
	 Student stu = (Student)session.getAttribute("stu");
	 String str = "您的准考证号为："+stu.getID();
	%>
	alert("<%=str%>");
	window.location.href="index.jsp";
	</script>		
</body>
</html>