<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%--今日の日付をページ属性todayにセット --%>
<% pageContext.setAttribute("today", new Date()); %>

<!DOCTYPE html>
<html>
	<head>
		<meta content="charset=UTF-8">
		<title>i18nタグライブラリ</title>
	</head>
	<body>
		<%--現在の日付/時刻を長い形式で出力 --%>
		日付時刻 ->
		<fmt:formatDate value="${today}" type="BOTH" dateStyle="LONG" timeStyle="LONG"/><br />
		日付 ->
		<fmt:formatDate value="${today}" type="DATE" dateStyle="SHORT" /><br />
		時刻 ->
		<fmt:formatDate value="${today}" type="TIME" timeStyle="SHORT" /><br />
	</body>
</html>