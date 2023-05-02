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
<c:forEach var="name" items="山田,清水,田中,金子,掛川" varStatus="stt">
	<div
		<c:if test="${stt.count % 2 == 0}">style="color:red;"</c:if>
		<c:if test="${stt.count % 2 == 1}">style="color:blue;"</c:if>
		>こんにちは、${name}さん！
	</div>
</c:forEach>
</body>
</html>