<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String userID=request.getParameter("userID");
	String userpassword = request.getParameter("userpassword");
	session.setAttribute("userID", userID);
	session.setAttribute("userpassword", userpassword);
	if(userID.equals("梁非凡")&&userpassword.equals("123"))
		response.sendRedirect("ChatRoom.jsp");
	if(userID.equals("刘醒")&&userpassword.equals("456"))
		response.sendRedirect("ChatRoom.jsp");
%>