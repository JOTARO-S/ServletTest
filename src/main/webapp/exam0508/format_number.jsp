<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>

<!DOCTYPE html>
<html>
	<head>
		<meta content="charset=UTF-8">
		<title>i18nタグライブラリ</title>
	</head>
	<body>
		<%--変数numの値を数値形式に整数 --%>
		<c:set var="num" value="2501.9812" />
		${num} ->
		<fmt:formatNumber value="${num}" type="NUMBER" groupingUsed="true"
			minIntegerDigits="5" maxFractionDigits="3" /><br />
		<%--変数curの値を通過形式に整形(通貨単位は[$]) --%>
		<c:set var="cur" value="4571.53" />
		${cur} ->
		<fmt:formatNumber value="${cur}" type="CURRENCY" currencySymbol="$" /><br />
		<%--変数percの値をパーセント形式に整形(与えられた値は100倍) --%>
		<c:set var="perc" value="0.5764" />
		${perc} ->
		<fmt:formatNumber value="${perc}" type="PERCENT" maxFractionDigits="1" /><br />
	</body>
</html>

<!-- 通常は出来るだけ「type」「currencyCode」「CurrencySymbol」「groupingUsed」「maxIntegerDigits」
	「minIntegerDigits」「maxFractionDigits」「minFractionDigits」といった属性で書式指定する -->
<!-- 
	type ⇒ number, currency, percentのいずれかの形式でフォーマットするか指定する(デフォルトは number)
	maxIntegerDigits ⇒ 整数部分の桁数の最大数(この桁以上表示されない)
	minIntegerDigits ⇒ 整数部分の桁数の最小数(この桁以下にならない)
	maxFractionDigits ⇒ 小数部分の桁数の最大数(この桁以上表示されない)
	minFractionDigits ⇒  小数部分の桁数の最小数(この桁以下にならない)
																				詳細はServlet 204p参照
-->