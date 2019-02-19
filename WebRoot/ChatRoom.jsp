<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
			#chatting_frame {
				width:1150px;
				text-align:center;
				float: left;
				
			}
			#chatting_title {
				width:100%;
				margin-top: 20px;
				margin-left: 25px;
				background-color: #88DDFF;
			}
			.iframe {
				width: 100%;
				border: 1px solid #88DDFF;
				margin-left: 25px;
				float:left;
			}
			.font_color {
				color: #FFFFFF;
			}
			#frame_up {
				height: 520px;
			}
			#frame_down {
				height: 120px;
				border-top: 0;
				margin-bottom: 15px;
			}
		</style>
    <title>聊天室</title>

  </head>
  
  <body>
    <div id="header">
		<%@ include file="TOP.jsp"%>
		
		
		<div id="chatting_frame">
			<div id="chatting_title"><span>聊天室</span></div>
			<iframe id="frame_up" class="iframe" src="Chat_frameup.jsp"></iframe>
			<iframe id="frame_down" class="iframe" src="Chat_framedown.jsp"></iframe>
		</div>
	</div>
  </body>
</html>
