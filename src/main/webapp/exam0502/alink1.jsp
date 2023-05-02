<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.net.URLEncoder"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>クエリ情報</title>
</head>
<body>
	<!-- URLEncoderクラスのencodeメソッドでURLエンコードを行う -->
	<h3>URLEncoder.encodeで処理</h3>
	<a href="alink2.jsp?keyword=<%=URLEncoder.encode("クエリ情報(&%)", "UTF-8") %>">結果を確認</a>
	
	<h3>URLEncoder.encodeの処理なし</h3>
	<a href="alink2.jsp?keyword=クエリ情報(&%)">結果を確認</a>
</body>
</html>

