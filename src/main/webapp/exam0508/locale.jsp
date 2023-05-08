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
		<%--変数numの値を数値形式に整数 --%>
		<c:set var="num" value="2501.9812" />
		
		<%--ロケールja_JPである場合の日付/数値の整形 --%>
		<fmt:setLocale value="ja_JP" />
		
		日本 ->
		<fmt:formatDate value="${today}" type="BOTH" dateStyle="LONG" timeStyle="LONG" /><br />
		<fmt:formatNumber value="${num}" type="NUMBER" groupingUsed="true"
			minIntegerDigits="5" maxFractionDigits="3" /><br />
		
		<%--ロケールen_USである場合の日付/数値の整形 --%>
		<fmt:setLocale value="en_US" />
		
		アメリカ ->
		<fmt:formatDate value="${today}" type="BOTH" dateStyle="LONG" timeStyle="LONG" /><br />
		<fmt:formatNumber value="${num}" type="NUMBER" groupingUsed="true"
			minIntegerDigits="5" maxFractionDigits="3" /><br />
			
		<%--ロケールde_DEである場合の日付/数値の整形 --%>
		<fmt:setLocale value="de_DE" />
		
		ドイツ ->
		<fmt:formatDate value="${today}" type="BOTH" dateStyle="LONG" timeStyle="LONG" /><br />
		<fmt:formatNumber value="${num}" type="NUMBER" groupingUsed="true"
			minIntegerDigits="5" maxFractionDigits="3" /><br />
	</body>
</html>