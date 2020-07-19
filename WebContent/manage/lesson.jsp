<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.Lesson"%>
<%@page import="com.sykjxy.lesson.servce.LesServceImpl"%>
<%
	if(session.getAttribute("man")==null){
		%>
			<script type="text/javascript">
	 				alert("您没有登录请您先去登陆");
				    window.location.href="login.jsp";
				    window.close(); 
		   </script>
		<%
	}
	LesServceImpl  lsi = new LesServceImpl();
	List<Lesson> list = lsi.selectAllles();
	String [] delId = null;
	if((delId=request.getParameterValues("checkbox"))!=null){
		int m =lsi.remove(delId);
		if(m>0){ %>
		
	   <script type="text/javascript">
       alert("删除数据成功");
       window.location.href="lesson.jsp";
		</script>
		
		<%
		}else{
			//重定向
			response.sendRedirect("error.jsp");
		}
	}
%>
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet">
<script type="text/javascript">
//判断用户是否选择了要删除的记录，如果是，则提示“是否删除”；否则提示“请选择要删除的记录”
function check(){
		if(confirm("确定要删除吗？")){
			return true;
	}else{
		return false;
	}
}
</script>

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
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">课程信息管理  &gt;&gt;&gt;</span></td>
              <td align="right"><img src="../Images/m_ico1.gif" width="5" height="9">&nbsp;当前管理员：&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
<table width="96%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="90%" height="27" align="right"><img src="../Images/add.gif" width="19" height="18">&nbsp;</td>
    <td width="10%"><a href="#" onClick="window.open('lesson_add.jsp','','width=292,height=200')">添加课程</a> </td>
  </tr>
</table>
<table width="96%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#67A8DB">
<form action="lesson.jsp" method="post" name="form" onSubmit="return check()">
  <tr align="center" bgcolor="#A8D8FC">
    <td width="11%" height="26" bgcolor="#B2D6F1">ID</td>
    <td width="27%" bgcolor="#B2D6F1">课程名称</td>
    <td width="27%" bgcolor="#B2D6F1">专业</td>
	<td width="27%" bgcolor="#B2D6F1">加入时间</td>
	<td width="8%" bgcolor="#B2D6F1">选项</td>
  </tr>
  <% for(int i=0;i<list.size();i++) {%>
  <tr>
 	<td align="center"><%=list.get(i).getId() %></td> 
    <td style="padding:5px;"><%=list.get(i).getName() %></td>
     <td style="padding:5px;"><%=list.get(i).getProfession() %></td>
	<td align="center"><%=list.get(i).getJoinTime() %></td>
    <td align="center"><input type="checkbox" name="checkbox" value="<%=list.get(i).getId() %>"></td>
  </tr>
  <%} %>
</table>
<table width="94%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td width="60%" height="24">&nbsp;</td>
	<td width="40%" align="right">
	  <input name="delid" style="color:red;cursor:hand;" type="submit" value="删除">
	  </td>
	<!--层ch用于放置隐藏的checkbox控件，因为当表单中只是一个checkbox控件时，应用javascript获得其length属性值为undefine-->
	<script type="text/javascript">ch.style.display="none";</script>
  </tr>
  </form>
</table>
</td>
      </tr>
    </table></td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
