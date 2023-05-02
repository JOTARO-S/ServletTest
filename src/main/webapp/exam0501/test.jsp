<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
</head>
<body>
<form  action="../Test" method="post">
	<label>名前:</label>
	<input type="text" name="name" required><br>
	<label>アドレス:</label>
	<input type="mail" name="address">
	<button type="submit">送信</button>
</form>
<a href="hello.jsp">hello</a>
<jsp:include page="hellocall.jsp"></jsp:include>
<%@ include file="include.jsp" %>
</body>
</html>