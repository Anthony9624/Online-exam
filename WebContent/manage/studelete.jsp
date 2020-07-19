<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <%@page import="com.sykjxy.entity.Student"%>
 <%@page import="com.sykjxy.stu.servce.StuServceImpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	StuServceImpl ssi = new StuServceImpl();
      String[] delId;
	  //用来获取多个复选按钮的值
	  delId = request.getParameterValues("checkbox");
	  if(ssi.deleteStu(delId)>0){
		  
	  %>
	 <script type="text/javascript">
	               alert("删除数据成功");
		         window.location.href="student.jsp";
		</script>
	 <%
	  }else{
			//重定向
			response.sendRedirect("error.jsp");
		}
	 %>
</body>
</html>