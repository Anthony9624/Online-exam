<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.Student"%>
<%@page import="com.sykjxy.stu.servce.StuServceImpl"%>
<%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	
	//获取注册的文本信息
	StuServceImpl ssi = new StuServceImpl();
	String ID = request.getParameter("ID");
	String name = request.getParameter("name");
	String pwd = request.getParameter("newpwd");
	String sex = request.getParameter("sex");
	String question = request.getParameter("question");
	String answer = request.getParameter("answer");
	String profession  = request.getParameter("profession");
	String cardNo  = request.getParameter("cardNo");
	Student user = new Student();
	user.setID(ID);
	user.setName(name);
	user.setPwd(pwd);
	user.setSex(sex);
	user.setQuestion(question);
	user.setAnswer(answer);
	user.setProfession(profession);
	user.setCardNo(cardNo);
	
	if (ssi.edit(user)){		
	//转发
	session.setAttribute("user",user);
	request.getRequestDispatcher("student_Modifyok.jsp").forward(request, response);
		}
		else{
	//重定向
	response.sendRedirect("error.jsp");
		}
%>