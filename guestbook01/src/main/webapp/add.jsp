<%@page import="com.markany.guestbook.vo.GuestbookVo"%>
<%@page import="com.markany.guestbook.dao.GuestbookDao"%>

<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>등록</h1>
	<%=message %>
</body>
</html>