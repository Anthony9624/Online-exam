<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<title>Untitled Document</title>
<meta charset="utf-8">
</head>

<body>
<%
session.invalidate();
out.println("<script language='javascript'>");
out.println("window.location.href='index.jsp'");
out.println("</script>");
%>	


</body>
</html>
