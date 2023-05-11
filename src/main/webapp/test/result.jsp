<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザーの表示</title>
</head>
<body>
<%@ include file="headerSample.jsp" %>
<h1>ユーザー一覧</h1>
	<table border="1">
	<tr>
		<th>ID</th>
		<th>名前</th>
		<th>E-Mailアドレス</th>
	</tr>
	
<!-- taglibを用いたデータの取り出し -->
	<c:forEach var="data" items="${requestScope['data']}">
	<tr>
		<td>${data.id }</td>
		<td>${data.name}</td>
		<td>${data.email}</td>
	</tr>
	</c:forEach>

</body>
</html>