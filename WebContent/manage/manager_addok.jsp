<%@page import="com.sykjxy.entity.Manager"%>
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
	 Manager man = (Manager)session.getAttribute("man2");
	 String str = "管理员："+man.getName()+"添加成功";
	%>
	alert("<%=str%>");
	window.close();
	</script>		
</body>
</html>