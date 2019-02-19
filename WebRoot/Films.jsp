<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>电影搜索</title>
  
  </head>
  
  <body>
   <h3 align="center">www.movie.com</h3>
		<hr>
		<div id="header">
			<%@ include file='TOP.jsp' %>
		</div>
	<form method="post" action="FilmInfo.jsp">
	<table width="30%" border="1" align="center">
		<tr>
			<td bgcolor="#0CF" align="center">快速查询</td>
		</tr>
		<tr>
			<td align="center">影片名称关键词：<input type="text" name="keyWords">
			<br>
			<br>
			<input name="submit" type="submit" value="开始寻找影片">
			</td>
		</tr>
	</table>
	</form>
  </body>
</html>
