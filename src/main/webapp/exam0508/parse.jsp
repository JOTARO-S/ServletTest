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
		<%--数値の整数部分のみを解析 --%>
		<c:set var="num" value="1234.56" />
		<fmt:parseNumber value="${num}" integerOnly="true" var="inum" />
		${inum}<br />
		<%--数値をパーセント値として解析 --%>
		<c:set var="perc" value="12.5%" />
		<fmt:parseNumber value="${perc}" type="PERCENT" var="iperc" />
		${iperc}<br />
		<%--日付を与えられた書式で解析 --%>
		<c:set var="today2" value="2013年05月10日" />
		<fmt:parseDate value="${today2}" pattern="yyyy年MM月dd日" var="dtoday2" />
		${dtoday2}<br />
		<%--時刻を与えられた条件（短い時刻形式）で解析 --%>
		<c:set var="today3" value="18:35" />
		<fmt:parseDate value="${today3}" type="TIME" timeStyle="SHORT" var="dtoday3" />
		${dtoday3}<br />
	</body>
</html>