<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.jkw.ToolBean.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>电影信息</title>
  </head>
  
  <body>
    <h3 align="center">www.movie.com</h3>
		<hr>
		<div id="header">
			<%@ include file='TOP.jsp' %>
		</div>
		<%
		request.setCharacterEncoding("utf-8");
		db a = new db();
		String filmName =  request.getParameter("keyWords");
		String stringSQL = "";
		if(filmName == null || filmName.equals("") ){
			stringSQL = "select * from film";
		}
		else{
			stringSQL = "select * from film where name like '"+filmName+"'";
		}
		%>
		<table align="center" width="50%">
		<tr>
			<td bgcolor="#0cf" align="center"  colspan = "6">电影介绍</td>
		</tr>
		<tr>
			<td>电影封面</td>
			<td>电影名称</td>
			<td>导演</td>
			<td>演员</td>
			<td>国家和地区</td>
			<td>上映时间</td>
		</tr>
		
		<%
			ArrayList<Film> rs = a.executeQuery(stringSQL);
			for(int i = 0;i < rs.size();i++){
			out.println("<tr>");
			out.println("<td>暂时无法显示图片	</td>");
			out.println("<td>" + rs.get(i).getName() + "</td>");
			out.println("<td>" + rs.get(i).getDirector() + "</td>");
			out.println("<td>" + rs.get(i).getActor() + "</td>");
			out.println("<td>" + rs.get(i).getNation() + "</td>");
			out.println("<td>" + rs.get(i).getShowTime() + "</td>");
			out.println("</tr>");
			}
		%>
	</table>
  </body>
</html>
