<%@ page language="java" contentType="text/html;charset=utf-8" %>
<html>
	<head>
		<title>
			Movie电影网
		</title>
		<style>
		#header{background-color:#0CF;
			}
		</style>
	</head>
	<body>
		<h3 align="center">www.movie.com</h3>
		<hr>
		<div id="header">
			<%@ include file='TOP.jsp' %>
		</div>
		
		 <table width="700px" border="0" align="center">
		 	<tr>
		 		<td colspan="2" align="center" bgcolor="#0CF">会员信息</td>
		 	</tr>
		 	<tr><td>
		 		尊敬的<%= (String)session.getAttribute("usernickname") %>(<%= (String)session.getAttribute("userno") %>)影友：
		 		<br>
		 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请确认您的信息：
		 		<br>
		 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;会员代码：<%=(String)session.getAttribute("userno") %>
		 		<br>
		 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：<%=(String)session.getAttribute("username") %>
		 		<br>
		 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;身份证号:<%=(String)session.getAttribute("userIDno") %>
		 		<br>
		 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别：<%=(String)session.getAttribute("sex") %>
		 		<br>
		 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出生日期：<%=(String)session.getAttribute("year") %>/<%=(String)session.getAttribute("month") %>/<%=(String)session.getAttribute("day") %>
		 		<br>
		 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;邮箱：<%=(String)session.getAttribute("mailadd") %>
		 		<br>
		 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电话：<%=(String)session.getAttribute("phone") %>
		 		<br>
		 		<%
		 			String[] like=(String[])session.getAttribute("like");
		 			String strlike="";
		 			for (int i = 0; i <like.length;i++){
		 				if(strlike.trim().equals("")){
		 					strlike=strlike+"'"+like[i].toString()+"'";
		 				}
		 				else{
		 				strlike=strlike+",'"+like[i].toString()+"'";
		 				}
		 			}
		 			if(strlike.trim().substring(0, strlike.trim().length()).equals(",")){
		 				strlike=strlike.trim().substring(0, strlike.trim().length()-1);
		 			}
		 			out.print("您的爱好是"+strlike);
		 		 %>
		 		<br>
		 		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地址与邮编：<%=(String)session.getAttribute("address") %>&nbsp;&nbsp;<%=(String)session.getAttribute("PostNo") %>
		 		
		 	
		 	</td></tr>
		 </table>
	</body>
</html>