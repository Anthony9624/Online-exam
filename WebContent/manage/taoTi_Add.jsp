<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8"%>
 <%@page import="com.sykjxy.entity.Manager"%>
 <%@page import="com.sykjxy.entity.TaoTi"%>
  <%@page import="com.sykjxy.entity.Lesson"%>
 <%@page import="com.sykjxy.lesson.servce.LesServceImpl"%>
 <%@page import="com.sykjxy.taoti.servce.TaoServceImpl"%>
 <%
     request.setCharacterEncoding("utf-8");
   	 Manager man = (Manager)session.getAttribute("man");
     TaoServceImpl tsi = new TaoServceImpl();
     LesServceImpl lsi = new LesServceImpl();
     List<Lesson> list = lsi.selectAllles();
     String Name=null;
     if((Name=request.getParameter("name"))!=null){
    	 int LessonId = Integer.parseInt(request.getParameter("lessonId"));
    	 if(tsi.save(Name, LessonId)==1){
    		 %>
    		 <script type="text/javascript">
	               alert("添加成功");
				   window.location.href="taoTi.jsp";
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
</head>
<script type="text/javascript">
function check(){
	if(form.name.value==""){
		alert("请输入套题名称!");form.name.focus();return false;
	}
}
</script>
<body>
<%@ include file="top.jsp"%>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
    <td width="602" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">套题信息管理 &gt; 添加套题信息 &gt;&gt;&gt;</span></td>
              <td align="right"><img src="../Images/m_ico1.gif" width="5" height="9">&nbsp;当前管理员：<%=man.getName() %></td>
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
<form action="" method="post" name="form" onsubmit="return check()">
  <table width="63%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
  <tr align="center">
    <td width="27%" height="30" align="left" style="padding:5px;">套题名称：</td>
    <td width="73%" align="left">
      <input type="text" name="name" size="30"/>
	  </td> 
    <tr>
    <td height="30" align="left" style="padding:5px;">所属课程：</td>
    <td align="left">
	 	<select name="lessonId">
	 	<%for(int i=0;i<list.size();i++) {%>
	 		<option value="<%=list.get(i).getId()%>"><%=list.get(i).getName()%></option>
	 	<%} %>
	 	</select>
     </td>
    </tr>
    <tr>
      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
      <td>
      	<input type="submit" class="btn_grey" value="保存" />
        &nbsp;
        <input type="reset" class="btn_grey" value="取消" />
		&nbsp;
		<input type="button" class="btn_grey" value="返回 "onclick="window.location.href='taoTi.jsp'"/>
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
