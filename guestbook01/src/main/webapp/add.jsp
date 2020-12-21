<%@page import="com.markany.guestbook.vo.GuestbookVo"%>
<%@page import="com.markany.guestbook.dao.GuestbookDao"%>

<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	message = message.replace("\r\n", "<br>");
	String reg_date = sdf.format(cal.getTime());
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	vo.setReg_date(reg_date);
	new GuestbookDao().insert(vo);
	response.sendRedirect("/guestbook01");
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