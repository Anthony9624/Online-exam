<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<meta  charset=utf-8">
<head>
<title>网络在线考试――后台登录</title>
<link href="../CSS/style.css" rel="stylesheet">
<script type="text/javascript">
function check(){
	if (form.name.value==""){
		alert("请输入管理员名称!");form.name.focus();return false;
	}
	if (form.pwd.value==""){
		alert("请输入密码!");form.pwd.focus();return false;
	}	
}
</script>
</head>
<body>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#EEEEEE"><table width="464" height="294" border="0" align="center" cellpadding="0" cellspacing="0" background="../Images/m_login.jpg">
      <tr>
        <td width="157" height="153">&nbsp;</td>
        <td width="307">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td valign="top">
   <form action="dologin.jsp" method="post" name="form" onSubmit="return check()">
                      <table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolorlight="#FFFFFF" bordercolordark="#D2E3E6">
                        <tr>
                          <td width="26%" height="30">管理员名称：</td>
                      <td width="74%">
                        <html:text property="name" size="25"/>
                        <input type="text" name="name" size="25"></td>
                      </tr>
                        <tr>
                          <td height="30">管理员密码：</td>
                      <td>
                      	<input type="text0" name="pwd" size="25">
                      	</td>
                      </tr>
                        <tr>
                         <td height="33" colspan="2" align="center">
	                        &nbsp;
							<input type="submit" value="确定" class="btn_grey">
	                        &nbsp;
						  <input type="reset" value="重置"  class="btn_grey" />
	                        &nbsp;
	                      <input type="button" value="关闭" class="btn_grey" onclick="window.close()"/>                  
					   </td>
                      </tr>
              </table> 
		    </form>		
		</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
