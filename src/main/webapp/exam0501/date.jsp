<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Date</title>
</head>
<body>
	<p>いまは</p>
	<% Date date = new Date();
		DateFormat df = DateFormat.getDateTimeInstance();
	%>
	<%= df.format(date) %>
	<p>です。</p>
</body>
</html>