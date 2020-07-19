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
	 Student user = (Student)session.getAttribute("user");
	 
	 String str = "准考证号为："+user.getID()+"资料修改成功";
	 session.setAttribute("user",user);
	%>
	alert("<%=str%>");
	window.location.href="default.jsp";
	</script>		
</body>
</html>