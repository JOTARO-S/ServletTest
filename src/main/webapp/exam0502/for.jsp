<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coreタグライブラリ</title>
</head>
<body>
<c:forEach var="i" begin="1" end="5"><!-- c:forEach でfor文のような繰り返し処理が可能 -->
	<h${i}>こんにちは、JSP!</h${h}>
</c:forEach>

<c:forEach var="name" items="山田,清水,田中,金子,掛川">
	<div>こんにちは、${name}さん！</div>
</c:forEach>
</body>
</html>