<%@ page contentType="text/html; charset=UTF-8" language="java" 
	import="java.util.*"
	import="java.util.Date"
%>
<%
	request.setCharacterEncoding("utf-8");
	String message = request.getParameter("message");
	Date date = new Date();
	int year = ((Integer)date.getYear()).intValue() + 1900;
	int month = ((Integer)date.getMonth()).intValue() + 1;
	int day = ((Integer)date.getDate()).intValue();
	int hour = ((Integer)date.getHours()).intValue();
	int minute = ((Integer)date.getMinutes()).intValue();
	String mDate ="("+ year +"-"+ month+"-" + day+" " + hour+":" + minute+":" + ")  ";
	if(message != null) {
		if(application.getAttribute("message") == null) {
			application.setAttribute("message",mDate+""+
					"<strong>"+session.getAttribute("userID")+"&nbsp;</strong>&nbsp;说:&nbsp;&nbsp;"+
					message);
		} else {
			application.setAttribute("message",application.getAttribute("message")+"<br>"+
					mDate+""+
					"<strong>"+session.getAttribute("userID")+"&nbsp;</strong>说&nbsp;:&nbsp;"+
					message);
		}
	}
	response.sendRedirect("Chat_framedown.jsp");
%>