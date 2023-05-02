<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
<% 
	//テキストボックスの値から挨拶メッセージを生成/取得
	out.println("こんにちは" + request.getParameter("name") + "さん");

%>

</body>
</html>