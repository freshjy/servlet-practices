<%@page import="com.markany.guestbook.dao.GuestbookDao"%>
<%@page import="com.markany.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);
	
	new GuestbookDao().delete(vo);
	
	response.sendRedirect(request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete title here</title>
</head>
<body>
</body>
</html>