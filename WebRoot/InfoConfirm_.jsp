<%@ page language="java" contentType="text/html;charset=utf-8" %>
<%
			request.setCharacterEncoding("utf-8");
			String userno=request.getParameter("userno");
			String usernickname=request.getParameter("usernickname");
			String userpwd=request.getParameter("userpwd");
			String username=request.getParameter("username");
			String userIDno=request.getParameter("userIDno");
			String sex=request.getParameter("sex");
			String year=request.getParameter("year");
			String month=request.getParameter("month");
			String day=request.getParameter("day");
			String mailadd=request.getParameter("mailadd");
			String phone=request.getParameter("phone");
			String[] like=(String[])request.getParameterValues("like");
			String address=request.getParameter("address");
			String PostNo=request.getParameter("PostNo");
			session.setAttribute("userno", userno);
			session.setAttribute("usernickname", usernickname);
			session.setAttribute("userpwd", userpwd);
			session.setAttribute("username", username);
			session.setAttribute("userID", userIDno);
			session.setAttribute("userno", userno);
			session.setAttribute("sex", sex);
			session.setAttribute("year", year);
			session.setAttribute("month", month);
			session.setAttribute("day", day);
			session.setAttribute("mailadd", mailadd);
			session.setAttribute("address", address);
			session.setAttribute("PostNo", PostNo);
			session.setAttribute("phone", phone);
			session.setAttribute("like", like);
			response.sendRedirect("InfoConfirm.jsp");
			
		 %>
