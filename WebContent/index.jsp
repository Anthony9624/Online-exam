<%@ page language="java" contentType="text/html; charset=utf-8" 
    pageEncoding="utf-8"
    %>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
<title>网络在线考试</title>
<link href="CSS/style.css" rel="stylesheet">
<script type="text/javascript">
	//提交之前进行检查，如果return false，则不允许提交
	function check(){
	if(f1.ID==null||f1.ID.value==""){
	alert("用户名不能为空");
	return false;
	}
	if(f1.pwd==null||f1.pwd.value==""){
	alert("密码不能为空");
	return false;
	}
	return true;

	}
</script>
</head>
<body>
	<table width="778" height="266" border="0" align="center" cellpadding="0" cellspacing="0" background="Images/login_top.jpg">
	  <tr>
	    <td width="118" colspan="2">&nbsp;</td>
	  </tr>
	</table>
<table width="778" height="158"  border="0" align="center" cellpadding="0" cellspacing="0" background="Images/login_mid.jpg">
	<form action="dologin.jsp" name="f1" method="post" >
          <tr>
          	<td>
            	<table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolorlight="#FFFFFF" bordercolordark="#D2E3E6">
                	<tr>
						<td>&nbsp;</td>
						<td></td>
						<td></td>
		   		    </tr>
					<tr>
                        <td width="35%" height="30">&nbsp;</td>
                        <td width="9%" height="30">准考证号：</td>
                      	<td width="27%"><input type="text" name="ID" class="logininput" size="25"/></td>
                     	<td width="29%">&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="30">&nbsp;</td>
                      <td height="30">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
                      <td><input type="password" name="pwd" class="logininput" size="25"/></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td height="31">&nbsp;</td>
                      <td height="31" colspan="2" align="left">
                      <input type="submit" value="登录" class="btn_grey" onclick="return check()">
                        &nbsp;
					  <input type="reset" value="重置"  class="btn_grey" />
					  <input type="button" value="注册" class="btn_grey" onclick="window.location.href='register.jsp'"/>
                        &nbsp;
                      <input type="button" value="找回密码" class="btn_grey" onclick="window.location.href='seekPwd.jsp'"/>
                      </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                       <td height="40">&nbsp;</td>
                       <td height="31" colspan="2" align="right" valign="bottom">
                       <a href="manage/login.jsp" class="word_orange">进入后台</a>
                       <td>&nbsp;</td>
                     </tr>
                </table> 
            </td>
        </tr>
	</form>
</table>
<table width="778" height="196" border="0" align="center" cellpadding="0" cellspacing="0" background="Images/login_top.gif">
  <tr>
    <td height="182" background="Images/login_bottom.jpg">&nbsp;</td>
  </tr>
</table>
</body>
</html>
