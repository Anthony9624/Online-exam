<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.Student"%>
<%@page import="com.sykjxy.stu.servce.StuServceImpl"%>
<%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	//获取注册的文本信息
	StuServceImpl ssi = new StuServceImpl();
	String name = request.getParameter("name");
	String pwd = request.getParameter("password1");
	String sex = request.getParameter("sex");
	String question = request.getParameter("question");
	String answer = request.getParameter("answer");
	String profession  = request.getParameter("profession");
	String cardNo  = request.getParameter("cardNo");
	Student stu = new Student();
	   stu.setID(ssi.getID());
	   stu.setName(name);
	   stu.setPwd(pwd);
	   stu.setSex(sex);
	   stu.setJoinTime(new Date());
	   stu.setQuestion(question);
	   stu.setAnswer(answer);
	   stu.setProfession(profession);
	   stu.setCardNo(cardNo);
	
	if (ssi.save(stu)){		
	//转发
	session.setAttribute("stu",stu);
	request.getRequestDispatcher("student_ok.jsp").forward(request, response);
		}
		else{
	//重定向
	response.sendRedirect("error.jsp");
		}
%>