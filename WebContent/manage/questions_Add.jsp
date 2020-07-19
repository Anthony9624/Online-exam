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
    List<Lesson> lesList = lsi.selectAllles();
    List<TaoTi> Taotilist = tsi.query();
   	 
   	 %>
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet">
<script type="text/javascript" src="../JS/AjaxRequest.js">
</script>
</head>
<script type="text/javascript">
function check(){
	if(form.subject.value==""){
		alert("请输入考试题目名称!");form.subject.focus();return false;
	}
	if(form.optionA.value==""){
		alert("请输入A选项内容!");form.optionA.focus();return false;
	}
	if(form.optionB.value==""){
		alert("请输入B选项内容!");form.optionB.focus();return false;
	}
	if(form.optionC.value==""){
		alert("请输入C选项内容!");form.optionC.focus();return false;
	}
	if(form.optionD.value==""){
		alert("请输入D选项内容!");form.optionD.focus();return false;
	}
	if(form.answer.value==""){
		alert("请输入该题的正确答案");form.answer.focus();return false;
	}
}
function show(val){
		if(val=="单选题"){
		sOption.style.display="";
		mOption.style.display="none";
	}else if(val=="多选题"){
		sOption.style.display="none";
		mOption.style.display="";		
	}

}
</script>
<body >
<%@ include file="top.jsp"%>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
    <td width="602" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">考试题目管理 &gt; 添加考试题目 &gt;&gt;&gt;</span></td>
              <td align="right"><img src="../Images/m_ico1.gif" width="5" height="9">&nbsp;当前管理员：<%=man.getName() %>&nbsp;</td>
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
<form action="doquestions_Add.jsp" name="form" method="post" onsubmit="return check()">
  <table width="85%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
  <tr>
    <td height="30" align="left" style="padding:5px;">所属课程：</td>
    <td align="left">
	 <select name="lessonId">
	 		<%for(int i=0;i<lesList.size();i++) {%>
	 		<option value="<%=lesList.get(i).getId()%>"><%=lesList.get(i).getName()%></option>
	 		<%} %>
	 	</select>
     </td>
    </tr>
    <tr>
    <td height="30" align="left" style="padding:5px;">所属套题：</td>
    <td align="left" id="whichTaoTi">
    	<select name="TaoTiId">
	 		<%for(int i=0;i<Taotilist.size();i++) {%>
	 		<option value="<%=Taotilist.get(i).getId()%>"><%=Taotilist.get(i).getName()%></option>
	 		<%} %>
	 	</select>
     </td>
    </tr>
  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">考试题目：</td>
    <td width="85%" align="left">
       <input type="text" name="subject" size="40"/>*
	  </td>
    <tr>
    <tr>
    <td height="30" align="left" style="padding:5px;">试题类型：</td>
    <td align="left">
	 	<select name="type" onchange="show(this.value)">
	 		<option value="单选题"> 单选题</option>
	 		<option value="多选题"> 多选题</option>
	 	</select>
     </td>
    </tr>	
    <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">选项A：</td>
    <td width="85%" align="left">
      <input type="text" name="optionA" size="40"/> *
	  </td>
    </tr>
	  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">选项B：</td>
    <td width="85%" align="left">
     <input type="text" name="optionB" size="40"/>  *
	  </td>
    </tr>
	  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">选项C：</td>
    <td width="85%" align="left">
      <input type="text" name="optionC" size="40"/>  *
	  </td>
    </tr>
  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">选项D：</td>
    <td width="85%" align="left">
      <input type="text" name="optionD" size="40"/>  *
	  </td>
    </tr>
    <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">正确答案：</td>
    <td width="85%" align="left" id="sOption">
	 	<select name="answer">
	 		<option value="A">A</option>
	 		<option value="B">B</option>
	 		<option value="C">C</option>
	 		<option value="D">D</option>
	 	</select>
	  </td>	
    <td width="85%" align="left" id="mOption" style="display:none">
		<input type="checkbox" name="answerArr" class="noborder" value="A">A
		<input type="checkbox" name="answerArr" class="noborder" value="B">B
		<input type="checkbox" name="answerArr" class="noborder" value="C">C
		<input type="checkbox" name="answerArr" class="noborder" value="D">D
	</td>		  
    </tr>
	
	  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">备注：</td>
    <td width="85%" align="left">
      <input type="note" size="40"/>
	  </td>
    </tr>	
    <tr>
      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
      <td>
        <input type="submit" class="btn_grey" value="保存" />
        &nbsp;
        <input type="reset" class="btn_grey" value="取消" />
		&nbsp;
		<input type="button" class="btn_grey" value="返回 "onclick="window.location.href='questions.jsp'"/>	
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
