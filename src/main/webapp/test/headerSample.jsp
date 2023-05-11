<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="POST" action="main">
		<table border="1">
			<tr>
				<th colspan="1">
					<span class="label">
							${loginMessage}
					</span>
				</th>
				<th>
					<a href="main">main</a>
				</th>
				<th colspan="1">
					<input type="submit" value="ログアウト" />
				</th>
			</tr>
		</table>
	</form>
</body>
</html>