<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>添加管理员信息</title>
<meta charset=utf-8">
<link href="../CSS/style.css" rel="stylesheet">
</head>
<script type="text/javascript">
function check(){
	if(form.name.value==""){
		alert("请输入管理员名称!");form.name.focus();return false;
	}
	if(form.password1.value==""){
		alert("请输入管理员密码!");form.password1.focus();return false;
	}
	if(form.password2.value==""){
		alert("请确认管理员密码!");form.password2.focus();return false;
	}		
	if(form.password1.value!=form.password2.value){
		alert("您两次输入的管理员密码不一致，请重新输入!");form.password1.focus();return false;
	}
}
</script>
<body>
<table width="292" height="175" border="0" cellpadding="0" cellspacing="0" background="../Images/subBG.jpg">
  <tr>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="12%" height="47">&nbsp;</td>
        <td width="85%" valign="bottom"><table width="86%" height="31" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="word_white">添加管理员</td>
          </tr>
        </table></td>
        <td width="3%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="100%" height="116"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="116" align="center" valign="top">
	<form action="domanager_add.jsp" method="post" name="form" onSubmit="return check()">
	<table height="116"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="81" height="30" align="center">管理员名称：</td>
        <td width="167">
          <input type="text" name="name"/>
          </td>
      </tr>
      <tr>
        <td height="28" align="center">管理员密码：</td>
        <td>
        	<input type="text" styleId="password1" name="password1">
        </td>
      </tr>
      <tr>
        <td height="28" align="center">确认 &nbsp;密码：</td>
        <td>
      	 	<input type="text" styleId="password2" name="password2">
        </td>
      </tr>
      <tr>
        <td height="30" align="center">&nbsp;</td>
        <td>
            <input type="submit" value="登录" class="btn_grey">&nbsp;
            <input type="button" value="取消" class="btn_grey" onclick="window.close();"/>
            </td>
      </tr> 
    </table>
	</form>
	</td>
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
