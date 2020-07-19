<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.Student"%>
<%
	request.setCharacterEncoding("utf-8");
if(session.getAttribute("user")==null){
	%>
		<script type="text/javascript">
 				alert("您没有登录请您先去登陆");
			    window.location.href="index.jsp";
	   </script>
	<%
}else {
	Student user = (Student)session.getAttribute("user");
%>
<html>
<head>
<title>网络在线考试</title>
<link href="CSS/style.css" rel="stylesheet">
<script type="text/javascript" src="JS/ContentLoader.js">
</script>
</head>
<script type="text/javascript">
function fun(){
	  document.getElementById("sex").value="<%=user.getSex()%>";
	}
function check(){
	if(form.name.value==""){
		alert("请输入考生姓名!");form.name.focus();return false;
	}
	if(form.oldpwd1.value==""){
		alert("请输入的原密码!");form.oldpwd1.focus();return false;
	}
	if(form.oldpwd1.value!=form.holdpwd.value){
		alert("您输入的原密码不正确，请重新输入!");form.oldpwd1.value="";
		form.oldpwd1.focus();return false;
	}
	if(form.newpwd.value==""){
		alert("请输入的新密码!");form.newpwd.focus();return false;
	}	
	if(form.newpwd1.value==""){
		alert("请确认新密码!");form.newpwd1.focus();return false;
	}	
	if(form.newpwd.value!=form.newpwd1.value){
		alert("您两次输入的新密码不一致，请重新输入!");
		form.newpwd.value="";form.newpwd1.value="";
		form.newpwd.focus();return false;
	}
	if(form.question.value==""){
		alert("请输入提示问题!");form.question.focus();return false;
	}
	if(form.answer.value==""){
		alert("请输入问题答案!");form.answer.focus();return false;
	}
}
</script>
<body onload="fun()">
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="131" background="Images/top_bg.jpg">&nbsp;</td>
  </tr>
</table>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="774" height="487"  border="0" cellpadding="0" cellspacing="0" align="center">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> 当前位置：→ <span class="word_darkGrey">修改个人资料 &gt;&gt;&gt;</span></td>
			  <td align="right"><img src="Images/m_ico1.gif" width="5" height="9">&nbsp;<a href="default.jsp">返回首页</a>&nbsp;</td>
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
<form action="dostudent_Modify.jsp" method="post" name= "form" onSubmit="return check()">
  <table width="57%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
  <tr> 
    <td height="30" align="left" style="padding:5px;">考生姓名：</td>
    <td align="left">
	 <input type="hidden" name="ID" value=<%=user.getID()%> >
	 <input type="text" name="name" size="20" readonly="readonly" value=<%= user.getName() %> /> *</td>
    </tr>
	    <tr>
    <td align="left" style="padding:5px;">原&nbsp;密&nbsp;码：</td>
    <td align="left">
      <input type="password" id="oldpwd1" name="oldpwd "  size="30" > *
      <input type="hidden" id="holdpwd" name="oldpwd" value=<%=user.getPwd()%> />
    </tr>
    <tr>
    <td height="30" align="left" style="padding:5px;">新&nbsp;密&nbsp;码：</td>
    <td align="left">
     <input type="password" id="newpwd" name="newpwd"  size="20">（密码由6到20位的数字或字母组成） *</td>
    </tr>
  <tr align="center">
    <td width="20%" height="30" align="left" style="padding:5px;">确认新密码：</td>
    <td width="80%" align="left">
         <input type="password" id="newpwd1" name="newpwd1"  size="20" />*</td>
    <tr>
    <tr>
    <td height="30" align="left" style="padding:5px;">性&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
    <td align="left">
		<select name="sex"  id="sex" >
			<option value="男">男</option>
			<option value="女">女</option>
		</select>
	</td>
    </tr>	
    <tr align="center">
    <td width="20%" height="30" align="left" style="padding:5px;">提示问题：</td>
    <td width="80%" align="left">
      <input type="text" name="question" size="40"  value=<%=user.getQuestion() %> /> （如我的生日） *	  </td>
    </tr>
	  <tr align="center">
    <td width="20%" height="30" align="left" style="padding:5px;">问题答案：</td>
    <td width="80%" align="left">
      <input type="text" name="answer" size="40" value=<%=user.getAnswer() %> />（如7月17日）*</td>
    </tr>
	  <tr align="center">
    <td width="20%" height="30" align="left" style="padding:5px;">专&nbsp;&nbsp;&nbsp;&nbsp;业：</td>
    <td width="80%" align="left">
      <input type="text" name="profession" size="40" value=<%=user.getProfession() %> /> *
      </td>
    </tr>
	<tr align="center">
    <td width="20%" height="30" align="left" style="padding:5px;">身份证号：</td>
    <td width="80%" align="left">
      <input type="text" name=cardNo size="40" value=<%=user.getCardNo() %> />*</td>
    </tr>
    <tr>
      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
      <td><input type="submit" class="btn_grey" value="保存" />
	        &nbsp;
	         <input type="reset" value="取消"  class="btn_grey" />
			&nbsp;
			<input type="button" value="返回" class="btn_grey" onclick="window.location.href='default.jsp'"/>
		</td>
    </tr>
</table>
</form>
</td>
      </tr>
    </table>
</td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
<% 
}
%>
