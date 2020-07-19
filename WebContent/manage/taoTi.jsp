<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8"%>
 <%@page import="com.sykjxy.entity.Manager"%>
 <%@page import="com.sykjxy.entity.TaoTi"%>
 <%@page import="com.sykjxy.taoti.servce.TaoServceImpl"%>
 <%
  Manager man = new Manager();
 List<TaoTi> list = new ArrayList<TaoTi>();
 if(session.getAttribute("man")==null){
		%>
			<script type="text/javascript">
	 				alert("您没有登录请您先去登陆");
				    window.location.href="login.jsp";
		   </script>
		<%
	}else{
   	  man = (Manager)session.getAttribute("man");
     TaoServceImpl tsi = new TaoServceImpl();
      list = tsi.query();
     String [] delId = null;
 	if((delId=request.getParameterValues("checkbox"))!=null){
 		int m =tsi.remove(delId);
 		if(m>0){ %>
 	   <script type="text/javascript">
        alert("删除数据成功");
        window.location.href="taoTi.jsp";
 		</script>
 		
 		<%
 		}else{
 			//重定向
 			response.sendRedirect("error.jsp");
 		}
 	}
}
 %>
 
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet">
<script language="javascript">
//判断用户是否选择了要删除的记录，如果是，则提示“是否删除”；否则提示“请选择要删除的记录”
function checkdel(){
	
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
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">套题信息管理  &gt;&gt;&gt;</span></td>
              <td align="right"><img src="../Images/m_ico1.gif" width="5" height="9">&nbsp;当前管理员<%=man.getName() %>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
<table width="96%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="90%" height="27" align="right"><img src="../Images/add.gif" width="19" height="18">&nbsp;</td>
    <td width="10%">
    <a href="taoTi_Add.jsp">添加套题</a>
    </td>
  </tr>
</table>
<table width="96%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#67A8DB">
<form action="taoTi.jsp" method="post" onSubmit="return checkdel()">
  <tr align="center">
    <td width="29%" height="30" bgcolor="#B2D6F1">套题名称</td>
	<td width="25%" bgcolor="#B2D6F1">所属课程</td>
	<td width="32%" bgcolor="#B2D6F1">加入时间</td>
	<td width="7%" bgcolor="#B2D6F1">修改</td>
	<td width="7%" bgcolor="#B2D6F1">选项</td>
  </tr>
  	<%for(int i=0;i<list.size();i++) {%>
  <tr>
    <td style="padding:5px;"><%=list.get(i).getName() %></td>
	<td style="padding:5px;"><%=list.get(i).getLessonName() %></td>
	<td align="center"><%=list.get(i).getJointime()%></td>
	<td align="center">
		<a href="taoTi_Modify.jsp?id=<%=list.get(i).getId() %>" paramId="id" paramName="taoTi" paramProperty="ID">修改</a>
	</td>
    <td align="center"><input type="checkbox" name="checkbox" value="<%=list.get(i).getId()%>"></td>
  </tr>
  <% } %>
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
  </from>
</table>
</td>
      </tr>
    </table></td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
