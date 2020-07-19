<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*"%>
<%@page import="com.sykjxy.entity.TaoTi"%>
<%@page import="com.sykjxy.entity.Student"%>
<%@page import="com.sykjxy.taoti.servce.TaoServceImpl"%>
<%@page import="com.sykjxy.result.servce.ResServceImpl"%>
<%@page import="com.sykjxy.questions.servce.QueServceImpl"%>

<%
 int id = 0;
if(session.getAttribute("user")==null){
	%>
		<script type="text/javascript">
 				alert("您没有登录请您先去登陆");
			    window.location.href="index.jsp";
	   </script>
	<%
} else {%>
<%
	Student user = (Student)session.getAttribute("user");
	id = Integer.parseInt(request.getParameter("id"));
	QueServceImpl sqi = new QueServceImpl();
	if(sqi.isExistQue(id)){
		%>
		<script type="text/javascript">
 				alert("该科目老师还没有发布考试试题");
			    window.location.href="selectLesson.jsp";
	   </script>
	<%
	}
	TaoServceImpl tsi = new TaoServceImpl();
	ResServceImpl rsi = new ResServceImpl();
	String lessonName = tsi.getTaoName(id);
	if(rsi.determineStu(user.getID(), lessonName)){
		%>
		<script type="text/javascript">
	               alert("该科目您已经考完试了");
				   window.location.href="default.jsp";
				
		</script>
		<% 
	}
}
	
%>
<html>
<head>
<title>网络在线考试</title>
<link href="CSS/style.css" rel="stylesheet">
</head>
<body>

<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="131" background="Images/top_bg.jpg">&nbsp;</td>
  </tr>
</table>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="774" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="76%" class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> 当前位置：→ <span class="word_darkGrey">在线考试 → 准备考试 &gt;&gt;&gt;</span></td>
			  <td width="24%" align="right"><img src="Images/m_ico1.gif" width="5" height="9">
			    <a href="default.jsp"></a>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
 <table width="100%" height="265"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="93" colspan="3" align="center" class="word_orange1">&nbsp;</td>
</tr>
  <tr>
    <td width="12%">&nbsp;</td>
    <td width="77%" align="center" valign="top">准备好了吗？<br><br>考生单击“开始考试”按钮，系统将立即记录本次考试并登记考试成绩！</td>
    <td width="11%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center" valign="top">
	<input type="button" value="开始考试" class="btn_grey" onclick="window.location.href='startExam.jsp?id=<%=id %>'"/>
	<input type="button" value="返回" class="btn_grey" onclick="window.location.href='selectLesson.jsp'"/>
	</td>
    <td>&nbsp;</td>
  </tr>
</table> 
        </td>
      </tr>
    </table>
</td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
