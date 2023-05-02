<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
	<!-- action属性にはポストデータの送信先を指定 -->
	<form method="post" action="post2.jsp">
		<label>あなたの好きな生き物は？</label> 
		<select name="animal">
			<option value="ham">ハムスター</option>
			<option value="dog">犬</option>
			<option value="cat">ねこ</option>
		</select> 
		<input type="submit" value="送信">
	</form>
</body>
</html>