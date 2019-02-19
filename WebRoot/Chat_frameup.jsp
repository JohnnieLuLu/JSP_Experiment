<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.Date"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="content-type" charset="utf-8"/>
		
		<script language="javascript"> 
			setTimeout("window.location.href='Chat_frameup.jsp'",8000);
		</script> 
	</head>
	<body>
		<div>
			<%=application.getAttribute("message")%>
		</div>
	</body>
</html>