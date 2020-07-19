<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
  <%@page import="com.sykjxy.entity.Manager"%>
	<%@page import="com.sykjxy.man.servce.ManServceImpl"%>
<%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String pwd = request.getParameter("password1");
	Manager man2 = new Manager();
	man2.setName(name);
	man2.setPwd(pwd);
	ManServceImpl msi = new ManServceImpl();
	
	if (msi.save(man2)==1){		
 	session.setAttribute("man2", man2);
	//转发
	request.getRequestDispatcher("manager_addok.jsp").forward(request, response);
		}
		else{
	//重定向
	response.sendRedirect("error.jsp");
		}
%>