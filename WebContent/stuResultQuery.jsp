<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.*"%>
<%@page import="com.sykjxy.entity.Student"%>
<%@page import="com.sykjxy.entity.Sturesult"%>
<%@page import="com.sykjxy.result.servce.ResServceImpl"%>
<%
    List <Sturesult> list = new ArrayList<Sturesult>();;
	Student user = null;
	if(session.getAttribute("user")==null){
		%>
			<script type="text/javascript">
	 				alert("您没有登录请您先去登陆");
				    window.location.href="index.jsp";
		   </script>
		<%
	}else{
		 user = (Student)session.getAttribute("user");
	     ResServceImpl rsi = new ResServceImpl();
		 list =rsi.selectStuRes(user.getID());
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
              <td width="76%" class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> 当前位置：→ <span class="word_darkGrey">考生成绩查询 &gt;&gt;&gt;</span></td>
			  <td width="24%" align="right"><img src="Images/m_ico1.gif" width="5" height="9">
			     <a href="default.jsp">返回首页</a>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="84%">&nbsp;      </td>
</tr>
</table> 
<table width="98%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#67A8DB">
  <tr align="center">
    <td width="21%" height="27" bgcolor="#B2D6F1">准考证号</td>
	<td width="26%" bgcolor="#B2D6F1">试卷名称</td>
	<td width="22%" bgcolor="#B2D6F1">考试时间</td>
	<td width="11%" bgcolor="#B2D6F1">单选题分数</td>
	<td width="11%" bgcolor="#B2D6F1">多选题分数</td>
    <td width="9%" bgcolor="#B2D6F1">合计分数</td>
  </tr>
  <% for(int i=0;i<list.size();i++) {%>
  <tr>
    <td style="padding:5px;"><%=list.get(i).getStuId() %></td>
	<td style="padding:5px;"><%=list.get(i).getWhichLesson()%></td>
	<td align="center"><%=list.get(i).getJointime()%></td>
	<td align="center"><%=list.get(i).getResSingle()%></td>
    <td align="center"><%=list.get(i).getResMore()%></td>
    <td align="center"><%=list.get(i).getResTotal()%></td>
  </tr>
  <%} %>
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
