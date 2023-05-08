<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録</title>
</head>
<body>
<!-- methodをGETにした場合クエリ情報を取得できる -->
<form method="POST" action="insert_process2.jsp">
<label>名前</label>
<input type="text" name="name" size="10" />
<label>住所</label>
<input type="text" name="address" size="20" />
<label>電話番号</label>
<input type="text" name="tel" size="10" />
<label>メールアドレス</label>
<input type="email" name="email" size="20" />
<input type="submit" value="送信" />
</form>
</body>
</html>