<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8" %>
<%@page import="com.sykjxy.entity.Manager"%>
<%@page import="com.sykjxy.entity.Sturesult"%>
<%@page import="com.sykjxy.man.servce.ManServceImpl"%>
<%@page import="com.sykjxy.result.servce.ResServceImpl"%>
	
<%
    Manager man = new Manager();
	List<Sturesult> list = new ArrayList<Sturesult>();
	if(session.getAttribute("man")==null){
		%>
			<script type="text/javascript">
	 				alert("您没有登录请您先去登陆");
				    window.location.href="login.jsp";
		   </script>
		<%
	}else{
	    man = (Manager)session.getAttribute("man");
		ResServceImpl rsi = new ResServceImpl();
	     list = rsi.selectAllRes();
		if(request.getParameter("queryIf")!=null){
			int id = Integer.parseInt(request.getParameter("queryIf"));
			String keywordn = request.getParameter("key");
			if(id!=0){
				list = rsi.selectSomeRes(id, keywordn);
			}
		}
	}
	
%>
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet">
</head>
<body>
<%@ include file="top.jsp"%>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
    <td width="602" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">考生成绩查询  &gt;&gt;&gt;</span></td>
              <td align="right"><img src="../Images/m_ico1.gif" width="5" height="9">&nbsp;当前管理员：<%=man.getName()%>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
      <tr>
        <td align="center" valign="top">
        <table width="100%" height="40" border="0" cellpadding="0" cellspacing="0">
		<form action="main.jsp" method="post">	
          <tr>
            <td align="left" valign="middle">&nbsp;查询条件：
	 		<select name="queryIf">
	 			<option value=1>准考证号</option>
	 			<option value="2">考试课程</option>
	 		</select>
	 &nbsp;关键字：
	 		<input type="text" name="key">&nbsp;&nbsp;
	        <input type="submit" class="btn_grey" value="查询"></td>
          </tr>
          </form>
        </table>
				
		<table width="98%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#67A8DB">
  <tr align="center">
    <td width="21%" height="27" bgcolor="#B2D6F1">准考证号</td>
	<td width="26%" bgcolor="#B2D6F1">所属课程</td>
	<td width="22%" bgcolor="#B2D6F1">考试时间</td>
	<td width="11%" bgcolor="#B2D6F1">单选题分数</td>
	<td width="11%" bgcolor="#B2D6F1">多选题分数</td>
    <td width="9%" bgcolor="#B2D6F1">合计分数</td>
  </tr>
  <% for(int i=0;i<list.size();i++) {%>
  <tr>
    <td style="padding:5px;"><%=list.get(i).getStuId() %></td>
	<td style="padding:5px;"><%=list.get(i).getWhichLesson() %></td>
	<td align="center"><%=list.get(i).getJointime()%></td>
	<td align="center"><%=list.get(i).getResSingle() %></td>
    <td align="center"><%=list.get(i).getResMore()%></td>
    <td align="center"><%=list.get(i).getResTotal()%></td>
  </tr>
  <%} %>
</table>
</td>
      </tr>
    </table></td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
