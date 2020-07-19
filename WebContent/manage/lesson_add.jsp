<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.Lesson"%>
<%@page import="com.sykjxy.lesson.servce.LesServceImpl"%>
<%
	String name = null;
	request.setCharacterEncoding("utf-8");
	if((name=request.getParameter("name"))!=null){
		String profession = request.getParameter("profession");
		LesServceImpl  lsi = new LesServceImpl();
		if(lsi.save(name,profession)==1){
			%>
			<script type="text/javascript">
	               alert("添加成功");
	               window.opener.location.href = "lesson.jsp";
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
<title>添加课程</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../CSS/style.css" rel="stylesheet">
</head>
<script language="javascript">

function check(){
	if(form.name.value==""){
		alert("请输入课程名称!");form.name.focus();return false;
	}else {
		return true;
	}
	if(form.profession.value==""){
		alert("请输入课程名称!");form.name.focus();return false;
	}else {
		return true;
	}
	
	
}
</script>
<body>
<table width="292" height="175" border="0" cellpadding="0" cellspacing="0" background="../Images/subBG.jpg">
  <tr>
    <td valign="top"><table width="100%" height="175" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="12%" height="47">&nbsp;</td>
        <td width="85%" valign="bottom"><table width="86%" height="31" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="word_white">添加课程</td>
          </tr>
        </table></td>
        <td width="3%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="100%" height="106"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="106" align="center" valign="middle" onsubmit="return check()">
	<form action="lesson_add.jsp" method="post" focus="name">
	<table height="77"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="67" height="30" align="center">课程名称：</td>
        <td width="181">
          <input type="text" name="name" size="25"/>
          </td>
      </tr>
      <tr>
        <td width="67" height="30" align="center">所属专业：</td>
        <td width="181">
          <input type="text" name="profession"size="25"/>
          </td>
      </tr>
      <tr>
        <td height="47" align="center">&nbsp;</td>
        <td>
        <input type="submit" value="保存" class="btn_grey" />&nbsp;
        <input type="button" value="取消" class="btn_grey" onclick="window.close();"/>
      </tr>
    </table>
	<form></td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
