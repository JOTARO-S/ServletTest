<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP&サーブレット連携</title>
</head>
<body>
	<ul>
		<!-- 身長と体重においては${param[変数]}を用いて入力されたデータを取り出す(paramはリクエストパラメーターを取得) -->
		<li>身長:${param['height']} (m)</li>
		<li>体重:${param['weight']} (kg)</li>
		<!-- BMI値と判定結果は${requestScope[変数]}を用いてrequestされたデータを取り出す(requestScopeはリクエストスコープの変数を取得) -->
		<li>BMI値:${requestScope['bmi']}</li>
		<!-- 出力される桁数などを抑えたい場合などはfmt:formatNumberなどを用いる -->
		<li>BMI値:<fmt:formatNumber value="${requestScope['bmi']}" type="NUMBER" groupingUsed="true"
			maxIntegerDigits="3" maxFractionDigits="2" />
		</li>
		<li>判定結果:${requestScope['rank']}</li>
	</ul>
</body>
</html>