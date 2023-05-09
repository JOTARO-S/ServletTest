<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html14/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<title>セッションのサンプル	</title>
</head>
<body>
	<h3>セッションのサンプル</h3>
	<!-- aリンクの場合、shoppingCartのdoGetが作動する -->
	<a href="shoppingCart">表示を更新</a>
	|
	<a href="shoppingCart?reset">注文のリセット</a>
		<!-- formの場合、methodでPOSTを指定しているのでdoPostが作動する -->
		<form action="shoppingCart" method="POST"><br />
		新しい注文:<input type="text" name="newOrder" /><br />
		<input type="submit" name="order" value="注文する" /><br />
	</form>
	
	<br />
	
	<c:if test="${not empty orders }">
		買い物カゴの中<br />
		<ol>
			<c:forEach items="${orders}" var="order">
				<li>${order}</li>
			</c:forEach>
		</ol>
	</c:if>
</body>
</html>