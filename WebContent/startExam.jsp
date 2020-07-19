<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
	pageEncoding="utf-8"%>
<%@page import="com.sykjxy.entity.TaoTi"%>
<%@page import="com.sykjxy.entity.Student"%>
<%@page import="com.sykjxy.entity.Questions"%>
<%@page import="com.sykjxy.taoti.servce.TaoServceImpl"%>
<%@page import="com.sykjxy.questions.servce.QueServceImpl"%>

<%
	int LessonID = Integer.parseInt(request.getParameter("id"));
	Student user = (Student)session.getAttribute("user");
	QueServceImpl sqi = new QueServceImpl();
	List<Questions> list1 = sqi.getQue(LessonID, "单选题");
	List<Questions> list2 = sqi.getQue(LessonID, "多选题");
	int s= 60/list1.size();
	int m = 40/list2.size();
%>
<html>
<head>
<meta  charset=utf-8 />
<title>网络在线考试</title>
<link rel="stylesheet" href=" CSS/style.css"/>
<script type="text/javascript" src=" JS/AjaxRequest.js">
</script>
<script type="text/javascript" >
timer = window.setInterval("currentTime();CountDown();",1000); 
	function currentTime(){
	var d=new Date();
	var t=d.toLocaleTimeString();
	document.getElementById("currentTime").value=t;
	}
	
	 var maxtime = 20; // 
     function CountDown() {
       if (maxtime >= 0) {
         minutes = Math.floor(maxtime / 60);
         seconds = Math.floor(maxtime % 60);
         msg =minutes + "分" + seconds + "秒";
         document.all["timer"].innerHTML = msg;
         if (maxtime == 10)alert("距离结束仅剩15秒");
           --maxtime;
       } else{
         clearInterval(timer);
         form.submit();
         alert("时间到，结束!");
       }
     }
</script>
<script type="text/javascript">
function keydown(){
	if(event.keyCode==8){
		event.keyCode=0;
		event.returnValue=false;
		alert("当前设置不允许使用退格键");
	  }if(event.keyCode==13){
		event.keyCode=0;
		event.returnValue=false;
		alert("当前设置不允许使用回车键");
	  }if(event.keyCode==116){
		event.keyCode=0;
		event.returnValue=false;
		alert("当前设置不允许使用F5刷新键");
	  }if((event.altKey)&&((window.event.keyCode==37)||(window.event.keyCode==39))){
		event.returnValue=false;
		alert("当前设置不允许使用Alt+方向键←或方向键→");
	  }if((event.ctrlKey)&&(event.keyCode==78)){
	   event.returnValue=false;
	   alert("当前设置不允许使用Ctrl+n新建IE窗口");
	  }if((event.shiftKey)&&(event.keyCode==121)){
	   event.returnValue=false;
	   alert("当前设置不允许使用shift+F10");
	  }
}
function click() {
 event.returnValue=false;
	 alert("当前设置不允许使用右键！");
}
document.oncontextmenu=click;
</script>

</head>
 
<body onLoad="currentTime();" onkeydown="keydown()">
<table width="770" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="40" height="39" background=" Images/startExam_leftTop.jpg">&nbsp;</td>
    <td width="667" align="right" background=" Images/startExam_top.jpg">&nbsp;
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>	
<td width="23%" nowrap height=23 align=right>考试时间：</td>
		<td width="14%" nowrap><font color="#FF0000">20</font>分钟</td>
		<td width="13%" nowrap>当前时间</td>
		<td width="60" nowrap><input type="text" id="currentTime"style="background-color:#eff6fc;border: 1px solid #eff6fc;"/>
		</td>
		<td width="16%" nowrap>剩余时间：</td>
		<td width="60" align=left nowrap><div id="timer"></div></td></tr>
</table>	
	</td>
    <td width="19" background="Images/startExam_top.jpg">&nbsp;</td>
    <td width="44" background="Images/startExam_rightTop.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="435" rowspan="2" background="Images/startExam_left.jpg">&nbsp;</td>
    <td height="43" colspan="2"><img src="Images/startExam_ico.jpg" width="117" height="43"></td>
    <td rowspan="2" background="Images/startExam_right.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="600" colspan="2" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td colspan="2" align="center" class="title">
          &nbsp;&nbsp;<%=list1.get(0).getTaoTiName() %>
          </td>
        </tr>
        <tr>
          <td width="64%">&nbsp;</td>
          <td width="36%">&nbsp;满分<font color="red">100</font>分&nbsp;&nbsp;&nbsp;单选题<font color="red">60</font>分&nbsp;&nbsp;&nbsp;多选题<font color="red">40</font>分</td>
        </tr>
      </table>
	  <form action="dostartExam.jsp" name="form" method="post">
	  <input type="hidden" name="stuId" value="<%=user.getID()%>">
          <input type="hidden" name="TaoTiName" value="<%=list1.get(0).getTaoTiName()%>">
          <input type="hidden" name="index" value="<%=list1.size()%>">
           <input type="hidden" name="indexs" value="<%=list2.size()%>">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td>
<table id="single" width="90%"  border="0" cellspacing="0" cellpadding="0" align=center>

  <tr>
    <td colspan="4" height=23 style="font-size:11pt;">一、单选题（<font color=red>每题<%=s %>分，答错不得分</font>）</td>
     <input type="hidden" name="s" value="<%=s%>">
  </tr>
  <%for(int i=0;i<list1.size();i++){ %>
  <tr>
    <td height=23 colspan="4" align=center nowrap>
	  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="8%" align=right height=23>[<%=i+1 %>]</td>
		  <td width="2%">&nbsp;</td>
		  <td width="90%" align=left nowrap style="font-size:11pt;">
		   <%=list1.get(i).getSubject() %>
		  </td>
        </tr>
      </table>
	</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <input type="hidden" name="ranswer<%=i %>" value="<%=list1.get(i).getAnswer()%>">
    <td width="3%" align=center nowrap><input type="radio" name="answer<%=i %>" value="A"/> </td>
    <td width="3%" align=center nowrap>A.</td>
    <td width="86%" align=left nowrap><%=list1.get(i).getOptionA() %></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="radio" name="answer<%=i %>"  value="B"/></td>
    <td width="3%" align=center nowrap>B.</td>
    <td width="86%" align=left nowrap><%=list1.get(i).getOptionB() %></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="radio" name="answer<%=i %>" value="C"/></td>
    <td width="3%" align=center nowrap>C.</td>
    <td width="86%" align=left nowrap><%=list1.get(i).getOptionC() %></td>
  </tr>
 <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="radio" name="answer<%=i %>" value="D"/></td>
    <td width="3%" align=center nowrap>D.</td>
    <td width="86%" align=left nowrap><%=list1.get(i).getOptionD() %></td>
  </tr>
  <%} %>
</table>

<table id="single" width="90%"  border="0" cellspacing="0" cellpadding="0" align=center>

  <tr>
    <td colspan="4" height=23 style="font-size:11pt;">二、多选题（<font color=red>每题<%=m %>分，答错不得分</font>）</td>
    <input type="hidden" name="m" value="<%=m%>">
  </tr>
  <% for(int i=0;i<list2.size();i++) {%>
  <tr>
    <td height=23 colspan="4" align=center nowrap>
	  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="8%" align=right height=23>[&nbsp;<%=i+1 %>&nbsp;]</td>
		  <td width="2%">&nbsp;</td>
		  <td width="90%" align=left nowrap style="font-size:11pt;">
				<%=list2.get(i).getSubject() %>
		  </td>
        </tr>
      </table>
	</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <input type="hidden" name="ranswers<%=i%>" value="<%=list2.get(i).getAnswer()%>">
    <td width="3%" align=center nowrap><input type="checkbox" name="answers<%=i %>" value="A"></td>
    <td width="3%" align=center nowrap>A.</td>
    <td width="86%" align=left nowrap><%=list2.get(i).getOptionA() %></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="checkbox" name="answers<%=i %>" value="B"></td>
    <td width="3%" align=center nowrap>B.</td>
    <td width="86%" align=left nowrap><%=list2.get(i).getOptionB() %></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="checkbox" name="answers<%=i %>" value="C"></td>
    <td width="3%" align=center nowrap>C.</td>
    <td width="86%" align=left nowrap><%=list2.get(i).getOptionC() %></td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="checkbox" name="answers<%=i %>" value="D"></td>
    <td width="3%" align=center nowrap>D.</td>
    <td width="86%" align=left nowrap><%=list2.get(i).getOptionD() %></td>
  </tr>
  <%} %>
</table>		
		</td>
	  </tr>
        <tr>
		  <td align="center">
		   <input type="submit" class="btn_grey" value="交卷">
		   </td>
        </tr>
      </table>
	  </td>
  </tr>
  <tr>
    <td width="40" height="40" background=" Images/startExam_leftBottom.jpg">&nbsp;</td>
    <td colspan="2" background=" Images/startExam_bottom.jpg">&nbsp;</td>
    <td background=" Images/startExam_rightBottom.jpg">&nbsp;</td>
  </tr>
</table>
</body>
</html>
