    <%@page import="com.sykjxy.entity.Manager"%>
	<%@page import="com.sykjxy.man.servce.ManServceImpl"%>
	<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	 ManServceImpl msi = new ManServceImpl();
	if(msi.remove(id)){
		%>
		<script type="text/javascript">
	    alert("修改成功");
		window.location.href="manager.jsp";
		</script>
		<% 
	}else{
		//重定向
		response.sendRedirect("error.jsp");
	}
	%>
