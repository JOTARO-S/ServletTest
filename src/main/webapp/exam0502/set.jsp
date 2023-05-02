
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="msg" value="こんにちは、タグライブラリ！" />
<c:set var="cnt" value="1" />
<c:set var="cnt2" value="${cnt + 1}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${msg}</title>
</head>
<body>
	<p>${msg}</p>
	<p>${cnt2}</p>
	<p><c:out value="${cnt3}" default="サーブレット" /></p>
</body>
</html>