<%@ page language="java" contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<head>
	<script language="javascript">
	function check(theform) {
		if(theform.userno.value==""){
			alert("会员代号不能为空！");
			theform.userno.focus();
			return false;
			}
		if(theform.userpwd.value==""){
			alert("密码不能为空！");
			theform.userpwd.focus();
			return false;
			}
		if(theform.userpwd2.value==""){
			alert("密码不能为空！");
			theform.userpwd2.focus();
			return false;
		}
		if(theform.username2.value==""){
			alert("您的姓名不能为空！");
			theform.username2.focus();
			return false;
		}
		if(theform.usernu.value==""){
			alert("身份证号不能为空！");
			theform.usernu.focus();
			return false;
		}
		if(theform.userpwd.value!=theform.userpwd2.value){
			alert("两次密码不一致，请重新输入！");
			theform.userpwd2.focus();
			return false;
		}
	}
	function checkAddress(){
		var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
		if(! reg.test(document.form.mail.value)){
			alert("请填写正确的邮箱格式！");
			document.form.mail.value=="";
			document.form.mail.focus();
			return false;
		}
	}
  
	</script>
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

	<form name="form" action="InfoConfirm_.jsp" method="post" onSubmit="return check(this)">
	<table width="700px" border="0" align="center">
	<tr><td colspan="2" align="center" bgcolor="#0CF">会员信息</td></tr>
	<tr>
		<td align="center">
		会员代码:&nbsp;<input type="text" name="userno">*
		<br>
		您的昵称:&nbsp;<input type="text" name="usernickname">
		<br>
		输入密码:&nbsp;<input type="password" name="userpwd">*
		<br>
		再输一次:&nbsp;<input type="password" name="userpwd2">*
			<br>
		</td>
	</tr>
</table>
<br>
<table width="700px" border="0" align="center">
<tr><td colspan="2" align="center" bgcolor="#0CF">个人资料</td>
</tr>
<tr>
<td align='center'>
您的姓名<input type="text" name="username">*
<br>
身份证号<input type="text" name="userIDno">*
<br>
性别<input type="radio" name="sex" value="男" checked>男<input type="radio" name="sex" value="女">女
<br>
出生日期<select name="year"><option value=1970 selected="selected">1970</option></select>年<select name="month"><option value=01 selected="selected">01</option></select>月<select name="day"><option value=01 selected="selected">01</option></select>日
<br>
电子邮箱<input type="text" name="mailadd" onBlur="checkAddress()">
<br>
电话<input type="text" name="phone">
<br>
您的爱好
<input type="checkbox" name="like" value="爱情">爱情
<input type="checkbox" name="like" value="科幻">科幻
<input type="checkbox" name="like" value="战争">战争
<input type="checkbox" name="like" value="历史">历史
<input type="checkbox" name="like" value="搞笑">搞笑
<br>
您的详细地址<input type="text" name="address">邮编<input type="text" name="PostNo">
</td>
</tr>
</table>
<table width="700px"  align="center">
	<tr>
		<td align="center">
			<input type="reset" value="重新填写">
			<input type="submit" value="提交我的申请">
		</td>
	</tr>
</table>
</form>



</body>
</html>
