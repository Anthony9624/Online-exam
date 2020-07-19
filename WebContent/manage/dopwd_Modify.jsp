<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
  <%@page import="com.sykjxy.entity.Manager"%>
	<%@page import="com.sykjxy.man.servce.ManServceImpl"%>
<%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	int id = Integer.parseInt(request.getParameter("id"));
	String pwd = request.getParameter("newpwd");
	ManServceImpl msi = new ManServceImpl();
	if (msi.edit(id, pwd)){		
	//转发
	
	//request.getRequestDispatcher("manager_addok.jsp").forward(request, response);
	%>
	<script type="text/javascript">
    alert("修改成功");
	window.location.href="manager.jsp";
	</script>
	<%
		}
		else{
			//重定向
			response.sendRedirect("error.jsp");
		}
%>