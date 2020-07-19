<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.Student"%>
<%@page import="com.sykjxy.stu.servce.StuServceImpl"%>
<%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	String answer = request.getParameter("answer");
	Student stu = (Student)session.getAttribute("stu");
	StuServceImpl ssi = new StuServceImpl();
	String pwd = null;
	if ((pwd=ssi.getPwd(stu.getID(),stu.getQuestion(),answer))!=null){		
		//登录成功,Student,并放入session
		    stu.setPwd(pwd);
	session.setAttribute("stu", stu);
	//转发
	request.getRequestDispatcher("seekPwd2.jsp").forward(request, response);
		}
		else{
	//重定向
	response.sendRedirect("error.jsp");
		}
%>