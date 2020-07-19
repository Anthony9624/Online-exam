<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.Student"%>
<%@page import="com.sykjxy.stu.servce.StuServceImpl"%>
<%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	//获取anme 与 pwd
	String ID = request.getParameter("ID");
	StuServceImpl ssi = new StuServceImpl();
	String question = null;
	if ((question=ssi.getQuestion(ID))!=null){		
		//登录成功,Student,并放入session
	Student stu=new Student();
	stu.setID(ID);
	stu.setQuestion(question);
	session.setAttribute("stu", stu);
	//转发
	request.getRequestDispatcher("seekPwd1.jsp").forward(request, response);
		}
		else{
	//重定向
	response.sendRedirect("error.jsp");
		}
%>