<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.sykjxy.result.servce.ResServceImpl"%>
<%@page import="com.sykjxy.entity.Sturesult"%>
<%
	//设置编码集
	request.setCharacterEncoding("utf-8");
	ResServceImpl rsi = new ResServceImpl();
	Sturesult res = new Sturesult();
	String cc ="stuId";
	String stuId = request.getParameter(cc);
	String TaoTiName = request.getParameter("TaoTiName");
	// index 是单选题的数量
	int index = Integer.parseInt(request.getParameter("index"));
	// indexs 是双选题的数量
	int indexs = Integer.parseInt(request.getParameter("indexs"));
	//单选题的分
	int resSingle = Integer.parseInt(request.getParameter("s"));
	//多选题的分
	int resMore = Integer.parseInt(request.getParameter("m"));
	//单选题对的数量
	int a=0;
	//多选题对的数量
	int b=0;
	for(int i=0;i<index;i++){
		//学生选的答案
		String as = "answer"+i;
		String ras ="ranswer"+i;
		String aa =  request.getParameter(as);
		//正确答案  
		String bb =  request.getParameter(ras);
		if(aa.equals(bb)){
			a++;
		}
	}
	for(int i=0;i<indexs;i++){
		//学生选的答案
		String ass = "answers"+i;
		String rass ="ranswers"+i;
		//获取系统正确的答案
		String ff =  request.getParameter(rass);
		//获取学生选的答案的字符数组
		String[] aa =  request.getParameterValues(ass);
		//把字符数组转化成字符串
		StringBuffer sbf = new StringBuffer();
		for(int j = 0; j < aa.length; j++){
			sbf.append(aa[j]);
		}
		String dd = sbf.toString();
		if(ff.equals(dd)){
			b++;
		}
	}
	resSingle = resSingle*a;
	resMore = resMore*b;
	//总分
	int resTotal = resSingle+resMore;
	res.setStuId(stuId);
	res.setWhichLesson(TaoTiName);
	res.setResSingle(resSingle);
	res.setResMore(resMore);
	res.setResTotal(resTotal);
	if (rsi.save(res)==1){		
		%>
		<script type="text/javascript">
	               alert("提交成功 请在成绩查询中查看");
		window.location.href="default.jsp";
		</script>
		<% 
	}else{
		//重定向
		response.sendRedirect("error.jsp");
	}
	
%>