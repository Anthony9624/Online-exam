<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
  <%@page import="com.sykjxy.entity.Questions"%>
 <%@page import="com.sykjxy.questions.servce.QueServceImpl"%><%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	int lessonId = Integer.parseInt(request.getParameter("lessonId"));
	int TaoTiId = Integer.parseInt(request.getParameter("TaoTiId"));
	String subject = request.getParameter("subject");
	String optionA =  request.getParameter("optionA");
	String optionB =  request.getParameter("optionB");
	String optionC =  request.getParameter("optionC");
	String optionD =  request.getParameter("optionD");
	String type = request.getParameter("type");
	String answer = "";
	if(type.equals("单选题")){
		 answer =  request.getParameter("answer");
	}else if(type.equals("多选题")){
		String[] answers = request.getParameterValues("answerArr");
		for(int i=0;i<answers.length;i++){
			answer+=answers[i];
		}
	}
	String note =  request.getParameter("note");
	Questions que = new Questions();
	que.setLessonId(lessonId);
	que.setType(type);
	que.setTaoTiId(TaoTiId);
	que.setSubject(subject);
	que.setOptionA(optionA);
	que.setOptionB(optionB);
	que.setOptionC(optionC);
	que.setOptionD(optionD);
	que.setAnswer(answer);
	que.setNote(note);
	QueServceImpl qsi = new QueServceImpl();
	if (qsi.save(que)){		
		%>
		<script type="text/javascript">
	               alert("添加成功");
		window.location.href="questions.jsp";
		</script>
		<% 
	}else{
		//重定向
		response.sendRedirect("error.jsp");
		}
%>