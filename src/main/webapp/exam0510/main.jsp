<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メインページ</title>
</head>
<body>
	<h1>メインページ</h1>
	<span class="label">${loginMessage}</span>
	<span class="label">${message}</span>
	<form method="POST" action="main">
		<table border="1">
			<tr>
				<th colspan="2">
					<input type="submit" value="ログアウト" />
				</th>
			</tr>
		</table>
	</form>
</body>
</html>