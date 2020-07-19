<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="com.sykjxy.entity.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
 out.println(session.getAttribute("user"));
 Student user = (Student)session.getAttribute("user");
 out.println(user);
%>
<%if(session.getAttribute("user")==null){
	%>
		<script type="text/javascript">
 				alert("您没有登录请您先去登陆");
			    this.location.href="index.jsp";
	   </script>
	<%
}%>
这是一个测试文件
</body>
</html>