<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>

<h3>文字化け</h3>
<form method="POST" action="japan2.jsp">
あなたの名前は？
<input type="text" name="name" size="10" />
<input type="submit" value="送信" />
</form>
<hr>
<h3>UTF-8</h3>
<form method="POST" action="japan3.jsp">
あなたの名前は？
<input type="text" name="name" size="10" />
<input type="submit" value="送信" />
</form>
<hr>
<form  method="POST" action="../HelloWorld">
<button type="submit">Hello</button>
</form>
</body>
</html>