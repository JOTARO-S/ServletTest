<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="point" value="68" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coreタグライブラリ</title>
</head>
<body>
	あなたの得点は${point}です。
	<br />

	<p>Coreライブラリの書き方</p>

	<c:if test="${point > 60}">
		<!-- 単数の場合 if ⇒ c:if -->
		<!-- 複数の場合 if ⇒ c:choose , else if ⇒ c:when, else ⇒ c:otherwise となる (if文とswitch文ぽい)-->
		<span style="color: Red;">合格です！</span>
	</c:if>

	<p>Javaプログラムの書き方</p>

	<%
	int point = 68;
	if (point > 60) {
	%>
	<span style="color: Red;">合格です！</span>

	<%
	}
	%>
</body>
</html>