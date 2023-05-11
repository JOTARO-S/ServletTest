<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メインページ</title>
</head>
<body>
	<%@ include file="headerSample.jsp" %>
	<h1>メインページ</h1>
	
	
	<form method="POST" action="main">
		<table border="1">
			<tr>
				<th colspan="1">
					<span class="label">${loginMessage}</span>
					<span class="label">${message}</span>
				</th>
			</tr>
			<tr>
				<th colspan="1">
					<a href="result">ユーザー全件取得</a>
				</th>
			</tr>
			<tr>
				<th colspan="1">
					<input type="submit" value="ログアウト" />
				</th>
			</tr>
		</table>
	</form>
</body>
</html>