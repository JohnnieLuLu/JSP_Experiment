<%@ page language="java" contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Movie电影网</title>
		<style>
			#header{background-color:#0CF;
			}
			#nav{line-height:30px;
			height:600px;
			width:200px;
			float:left;
			}
			#section{
			width:960px;
			float:left;
			}
			#adv{
			width:200px;
			float:left;
			}
		</style>
	</head>
	<body>
		<h3 align="center">www.movie.com</h3>
		<hr>
		<div id="header">
			<%@ include file='TOP.jsp' %>
		</div>
	  <div id="nav">
	  		<%@ include file='Left.jsp' %>
	  </div>
	  <div id="section">
		<p>&nbsp;&nbsp;欢迎您来到电影在线网，<a href="Register.jsp" target="_blank">[注册]</a>或者<a href="Login.jsp" target="_self">[登录]</a>成为我们的会员，然后就可以享受本站提供的各种会员服务.</p>
		<table width="960px" border="1">
			<tr>
				<td width="960px" height="30px" bgcolor="#0CF" align="center"><a href="#" target="_self" align="center">最新影片介绍</td>
			</tr>
			<tr>
				<td width="960px" height="200px"><img src="tupian.jpg" height="250px" width="200px" alt="电影血战钢锯岭"><a href="#" target="_self">血战钢锯岭</a></td>
			</tr>
		</table>
		<table width="960px" border="1">
			<tr>
				<td width="960px" height="30px" align="center" colspan="6" bgcolor="#0CF">电影票房榜</td>
			</tr>
			<tr>
			<td width="90px" height="30px" >名次</td>
			<td width="100px" height="30px" >中文片名</td>
			<td width="100px" height="30px" >英文片名</td>
			<td width="100px" height="30px" >出品公司</td>
			<td width="100px" height="30px" >本周票房</td>
			<td width="100px" height="30px" >累积票房</td>
			</tr>
		</table>
	  </div>
	  <div id="adv">
	   	<%@ include file='Right.jsp' %>
	  </div>
	</body>
</html>
