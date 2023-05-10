<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta content="charset=UTF-8">
		<title>結果セット</title>
	</head>
	<body>
	<table border="1">
	<tr>
		<th>名前</th>
		<th>住所</th>
		<th>電話番号</th>
		<th>E-Mailアドレス</th>
	</tr>
	
<!-- taglibを用いたデータの取り出し -->
	<c:forEach var="data" items="${requestScope['data']}">
	<tr>
		<td>${data.name}</td>
		<td>${data.address}</td>
		<td>${data.tel}</td>
		<td>${data.email}</td>
	</tr>
	</c:forEach>


<%--	Javaを用いたデータの取り出し(調整中) 
	<%
	//リクエストスコープからのデータの取得
	Address list = (Address)request.getAttribute("data");
	for (Address data : list) {
		String name = data.getName();
		String address = data.getAddress();
		String tel = data.getTel();
		String email = data.getEmail();
	%>
	<tr>
		<td><%= name %></td>
		<td><%= address %></td>
		<td><%= tel %></td>
		<td><%= email %></td>
	</tr>
	<% } %>
--%>
	</table>
	</body>
</html>


