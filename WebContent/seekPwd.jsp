<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>网络在线考试</title>
<link href="CSS/style.css" rel="stylesheet">
<script type="text/javascript" src="JS/ContentLoader.js">

</script>
</head>
<script type="text/javascript">
	function check() {
		if (form.ID.value == "") {
			alert("请输入准考证号!");
			form.ID.focus();
			return false;
		}
	}
</script>
<body>
	<table width="778" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td height="131" background="Images/top_bg.jpg">&nbsp;</td>
		</tr>
	</table>
	<table width="778" border="0" align="center" cellspacing="0"
		cellpadding="0">
		<tr>
			<td valign="top" bgcolor="#FFFFFF"><table width="774"
					height="474" border="0" cellpadding="0" cellspacing="0"
					align="center">
					<tr>
						<td height="30" bgcolor="#EEEEEE" class="tableBorder_thin">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td class="word_grey">&nbsp;<img src="Images/f_ico.gif"
										width="8" height="8"> 当前位置：→ <span class="word_darkGrey">找回密码
											&gt;&gt;&gt;</span></td>
									<td align="right"><img src="Images/m_ico1.gif" width="5"
										height="9">&nbsp;<a href="index.jsp">返回首页</a>&nbsp;</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td height="222" align="center" valign="top">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="84%">&nbsp;</td>
								</tr>
							</table>
							<form action="doseekPwd.jsp" method="post" name="form" onSubmit="return check()">
								<table width="57%" height="69" border="0" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="17%"><img src="Images/step1.gif" width="73"height="30"></td>
										<td width="83%" class="word_orange1">输入准考证号</td>
									</tr>
								</table>
								<table width="57%" border="0" cellpadding="0" cellspacing="0"
									bordercolor="#FFFFFF" bordercolordark="#D2E3E6"
									bordercolorlight="#FFFFFF">
									<tr align="center">
										<td width="16%" height="30" align="left" style="padding: 5px;">准考证号：</td>
										<td width="84%" align="left">
												 <input type="text" name="ID" size="40"/><span class="word_orange1"> *</span></td>
									</tr>
									<tr>
										<td height="65" align="left" style="padding: 5px;">&nbsp;</td>
										<td>
											<input type="submit" value="下一步" class="btn_grey"> &nbsp; 
											<input type="reset" value="取消"  class="btn_grey" />&nbsp; 
											<input type="button" value="返回" class="btn_grey" onclick="window.location.href='index.jsp'"/>
										</td>
									</tr>
								</table>
							</form>
						</td>
					</tr>
					<tr>
						<td height="153" align="right" valign="top"><img
							src="Images/seedPwd.gif" width="139" height="153"></td>
					</tr>
				</table></td>
		</tr>
	</table>
	<%@ include file="copyright.jsp"%>
</body>
</html>
