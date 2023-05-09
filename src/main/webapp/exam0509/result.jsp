<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	<c:forEach var="data" items="${requestScope['data']}">
	<tr>
		<td><c:out value="${data.name}" /></td>
		<td>${data.address}</td>
		<td>${data.tel}</td>
		<td>${data.email}</td>
	</tr>
	</c:forEach>
	</table>
	</body>
</html>


<%--
		<%
		ArrayList<Address> list = ${requestScope['array']};
		for(Address row : list) {
	%>
	<tr>
		<td><%= row.getName(); %></td>
		<td><%= row.getAddress(); %></td>
		<td><%= row.getTel(); %></td>
		<td><%= row.getEmail(); %></td>
	</tr>
	<% } %>
	
 --%>