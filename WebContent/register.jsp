<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>网络在线考试</title>
<link href="CSS/style.css" rel="stylesheet">
<script type="text/javascript" src="JS/ContentLoader.js">
</script>
</head>
<script  type="text/javascript">
function check(){
	if(form.name.value==""){
		alert("请输入考生姓名!");form.name.focus();return false;
	}
	if(form.password1.value==""){
		alert("请输入登录密码!");form.password1.focus();return false;
	}
	if(form.password1.value.length<6 || form.password1.value.length>20){
		alert("您输入的密码不合法，密码必须大于6位，并且小于等20位!");form.password1.focus();return false;
	}
	if(form.password2.value==""){
		alert("请确认登录密码!");form.password2.focus();return false;
	}		
	if(form.password1.value!=form.password2.value){
		alert("您两次输入的登录密码不一致，请重新输入!");form.password1.focus();return false;
	}
	if(form.question.value==""){
		alert("请输入提示问题!");form.question.focus();return false;
	}
	if(form.answer.value==""){
		alert("请输入问题答案!");form.answer.focus();return false;
	}
	if(form.cardNo.value==""){
		alert("请输入问题答案!");form.answer.focus();return false;
	}
}
</script>
<body>
<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="131" background="Images/top_bg.jpg">&nbsp;</td>
  </tr>
</table>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" bgcolor="#FFFFFF">
    <table width="774" height="487"  border="0" cellpadding="0" cellspacing="0" align="center">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td class="word_grey">&nbsp;
              	<img src="Images/f_ico.gif" width="8" height="8"> 当前位置：→ <span class="word_darkGrey">考生注册 &gt;&gt;&gt;</span>
              </td>
			  <td align="right">
			  	<img src="Images/m_ico1.gif" width="5" height="9">&nbsp;<a href="index.jsp">返回首页</a> &nbsp;
			  </td>
            </tr>
          </td>
        </tr>
    </table>
    <tr>
      <td align="center" valign="top">
       <table width="100%"  border="0" cellspacing="0" cellpadding="0">
         <tr>
           <td width="84%">&nbsp;</td>
		 </tr>
	</table> 
    <form action="doregister.jsp" name="form" method="post"  onSubmit="return check()">
   		<table width="57%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
  		<tr>
    		<td height="30" align="left" style="padding:5px;">考生姓名：</td>
   			<td align="left">
   				<input type="text" name="name" size="20"/> *
   			</td>
			 
    	</tr>
   		 <tr>
   		 	<td height="30" align="left" style="padding:5px;">密&nbsp;&nbsp;&nbsp;&nbsp;码：</td>
    		<td align="left">
    			<input type="text" name="password1" id="password1"  size="20"/>（密码由6到20位的数字或字母组成） *     
    		</td>
    	</tr>
  		<tr align="center">
    		<td width="16%" height="30" align="left" style="padding:5px;">确认密码：</td>
    		<td width="84%" align="left">
      			<input type="text" name="password2" id="password2"  size="20"/> *	  
      		</td>
   		<tr>
        <tr>
    		<td height="30" align="left" style="padding:5px;">性&nbsp;&nbsp;&nbsp;&nbsp;别：</td>
    		<td align="left">
	    		<select name="sex">
	    			<option value="男">男</option>
	    			<option value="女">女</option>
	    		</select>
		   </td>
       </tr>	
       <tr align="center">
	    	 <td width="16%" height="30" align="left" style="padding:5px;">提示问题：</td>
	    	 <td width="84%" align="left">
	    	 	<input type="text" name="question" size=40/>（如我的生日） *	  
	    	 </td>
    	</tr>
	    <tr align="center">
		     <td width="16%" height="30" align="left" style="padding:5px;">问题答案：</td>
		     <td width="84%" align="left">
		     	<input type="text" name="answer" size=40/> （如3月17日）*
		     </td>
    	</tr>
	    <tr align="center">
		    <td width="16%" height="30" align="left" style="padding:5px;">专&nbsp;&nbsp;&nbsp;&nbsp;业：</td>
		    <td width="84%" align="left">
		    	<input type="text" name="profession" size=40/> *
	      	</td>
    		</tr>
		<tr align="center">
		    <td width="16%" height="30" align="left" style="padding:5px;">身份证号：</td>
		    <td width="84%" align="left">
		    	<input type="text" name="cardNo" size=40/> * 
		    </td>
    </tr>
    <tr>
	      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
	      <td>
	      	<input type="submit" class="btn_grey" value="保存" />
	        &nbsp;
	         <input type="reset" value="取消"  class="btn_grey" />
			&nbsp;
			<input type="button" value="返回" class="btn_grey" onclick="window.location.href='index.jsp'"/>		
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
