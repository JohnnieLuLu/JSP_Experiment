<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.Date"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" charset="utf-8"/>
		<style type="text/css">
			#chatSend {
				width: 320px;
				margin: 0 auto;
				text-align: center;
			}
			#sendup {
				text-align: left;
				margin-bottom: 20px;
			}
		</style>
		<script type="text/javascript">
			function chatSubmit(form) {
				if(form.chatContent.value == "") {
					alert("请输入内容");
					form.chatContent.focus();
					return false;
				}
				form.submit();
				form.chatContent.value = "";
			}
			function backLogin() {
				alert("You are leaving the chatroom.");
				top.location.href="index.jsp";
			}
		</script>
	</head>
	<body>
	<div id="chatSend">
		<form class="sendup" id="sendup" action="Chat_words.jsp" method="post">
			您的ID：&nbsp;<%=session.getAttribute("userID") %>&nbsp;<br>
			内容：&nbsp;<input type="text" name="message">&nbsp;
			<input type="button" value="发送" onClick="chatSubmit(sendup)">
		</form>
		<div class="senddown">
			<input type="button" value="离开" onClick="backLogin()">
		</div>
	</div>
	</body>
</html>