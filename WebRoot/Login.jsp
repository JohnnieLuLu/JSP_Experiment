<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    	<title>用户登录</title>
    	<script type="text/javascript">
		function checkForm(form){
			if(form.userID.value==""){
				alert("用户名不可为空");
				form.userID.focus();
				return false;
			}
			if(form.password.value==""){
				alert("密码不能为空");
				form.password.focus();
				return false;
			}
			return true;
		}
		</script>
  </head>
  
  <body>
  	<h3 align="center">www.movie.com</h3>
	<hr>
	<div id="header">
		<%@ include file='TOP.jsp' %>
	</div>
	<form method="post" action="Login_action.jsp" onsubmit="return checkForm(this);">
			<table width='361' border='1' align="center">
			<tr>
				<td width='86'>用&nbsp;户&nbsp;名</td>
				<td width='259'><input type='text' name='userID'></td>
			</tr>
			<tr>
				<td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</td>
				<td><input type='password' name='password'/></td>
			</tr>
			<tr>
				<td colspan='2' align="center">
				<input type="submit" name="Submit" value='登录' />
				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="reset" name='Submit2' value='重置'>
				</td>
			</tr>
			</table>
		</form>
  </body>
</html>
