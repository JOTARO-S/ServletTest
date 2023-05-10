<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta content="charset=UTF-8">
		<title>データの登録</title>
	</head>
	<body>
	<span class="label label-danger">${message}</span>
	<form method="POST" action="login">
		<table border="1">
			<tr>
				<th>名前</th>
				<td><input type="text" name="name" size="35" maxlength="50" /></td>
			</tr>
			</tr>
				<th>メール</th>
				<td><input type="text" name="email" size="35" maxlength="150" /></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="ログイン" />
				</th>
			</tr>
		</table>
	</form>
	</body>
</html>