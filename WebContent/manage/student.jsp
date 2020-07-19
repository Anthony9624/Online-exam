<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8"%>
 <%@page import="com.sykjxy.entity.Manager"%>
 <%@page import="com.sykjxy.entity.Student"%>
 <%@page import="com.sykjxy.stu.servce.StuServceImpl"%>
 <%
   	 Manager man = (Manager)session.getAttribute("man");
	 StuServceImpl ssi = new StuServceImpl();
     List<Student> list = ssi.getAllStu();
 %>
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet">
<script type="text/javascript">

//判断用户是否选择了要删除的记录，如果是，则提示“是否删除”；否则提示“请选择要删除的记录”
function checkdel(delid,formname){
	var flag = false;
	for(i=0;i<delid.length;i++){
		if(delid[i].checked){
			flag = true;
			break;
		}
	}
	if(!flag){
		alert("请选择要删除的记录！");
		return false;
	}else{
			if(confirm("确定要删除吗？")){
				formname.submit();
		}
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
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">考生信息管理  &gt;&gt;&gt;</span></td>
              <td align="right"><img src="../Images/m_ico1.gif" width="5" height="9">&nbsp;当前管理员：<%=man.getName() %>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
<form action="studelete.jsp" method="post">
&nbsp;
<table width="96%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#67A8DB">
  <tr align="center" bgcolor="#A8D8FC">
    <td width="19%" height="26" bgcolor="#B2D6F1">准考证号</td>
    <td width="10%" bgcolor="#B2D6F1">考生姓名</td>
	<td width="7%" bgcolor="#B2D6F1">性别</td>
	<td width="26%" bgcolor="#B2D6F1">加入时间</td>
	<td width="13%" bgcolor="#B2D6F1">密码问题</td>	
    <td width="18%" bgcolor="#B2D6F1">身份证号</td>
    <td width="7%" bgcolor="#B2D6F1">选项</td>
  </tr>
  <% for(int i=0;i<list.size();i++){ %>
  <tr>
 	<td align="center"><%=list.get(i).getID() %></td> 
    <td style="padding:5px;"><%=list.get(i).getName() %></td>
	<td align="center"><%=list.get(i).getSex()%></td>
	<td align="center"><%=list.get(i).getJoinTime() %> </td>
    <td align="center"><%=list.get(i).getQuestion() %> </td>	
    <td align="center"><%=list.get(i).getCardNo()%></td>
    <td align="center"><input type="checkbox" name="checkbox"value=<%=list.get(i).getID() %>></td>
  </tr>
  <% } %>
</table>
<table width="94%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td width="60%" height="24">&nbsp;</td>
	<td width="40%" align="right">
	 <input type="submit" style="color:red;cursor:hand;" value="删除">
	  </td>
  </tr>
</table>
</form>
</td>
      </tr>
    </table></td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
