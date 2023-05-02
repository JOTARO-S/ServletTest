<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>クエリ情報</title>
</head>
<body>
<!-- methodをGETにした場合クエリ情報を取得できる -->
<form method="GET" action="query2.jsp">
あなたの名前は？
<input type="text" name="name" size="10" />
<input type="submit" value="送信" />
</form>
</body>
</html>