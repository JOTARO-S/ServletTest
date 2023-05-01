<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Time</title>
	</head>
	<body>
		<h2>コンテンツタイプの指定</h2>
		<p>現在の時刻は
	<%= new Date() %>
	
	<% Date date = new Date(); %>
	<p>現在の時刻は <%= date.toString() %></p>
	</body>
</html>