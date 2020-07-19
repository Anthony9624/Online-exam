<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.Manager"%>
<%@page import="com.sykjxy.man.servce.ManServceImpl"%>
<%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	//获取anme 与 pwd
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	List<Manager> list = new ArrayList<Manager>();
	ManServceImpl msi = new ManServceImpl();
	list=msi.login(name, pwd);
	if (list.size()==1){		
		//登录成功,Student,并放入session
	Manager man= list.get(0);
	session.setAttribute("man", man);
	//转发
	request.getRequestDispatcher("main.jsp").forward(request, response);
		}
		else{
	//重定向
	response.sendRedirect("error.jsp");
		}
%>