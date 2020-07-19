<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.Student"%>
<%@page import="com.sykjxy.stu.servce.StuServceImpl"%>
<%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	//获取anme 与 pwd
	String ID = request.getParameter("ID");
	String pwd = request.getParameter("pwd");
	List<Student> list = new ArrayList<Student>();
	StuServceImpl ssi = new StuServceImpl();
	list=ssi.login(ID, pwd);
	if (list.size()==1){		
		//登录成功,Student,并放入session
	Student user= list.get(0);
	session.setAttribute("user", user);
	//转发
	request.getRequestDispatcher("default.jsp").forward(request, response);
		}
		else{
	//重定向
	response.sendRedirect("error.jsp");
		}
%>