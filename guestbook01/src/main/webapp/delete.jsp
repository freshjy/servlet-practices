<%@page import="com.markany.guestbook.dao.GuestbookDao"%>
<%@page import="com.markany.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String sNo = request.getParameter("no");
String password = request.getParameter("password");
long no = Long.parseLong(sNo);
 
GuestbookVo vo = new GuestbookVo();
vo.setNo(no);
vo.setPassword(password);
new GuestbookDao().delete(vo);
response.sendRedirect("/guestbook01");
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