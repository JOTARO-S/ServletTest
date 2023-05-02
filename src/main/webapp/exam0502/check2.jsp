<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ポストデータ</title>
</head>
<body>
選択されたのは
<%
	//リクエストデータの文字コードを宣言
	request.setCharacterEncoding("UTF-8");
	//チェックボックスの値を取得
	String res = request.getParameter("tech"); //getParameter()メソッドでは単一の値しか取得することが出来ない
	out.println(res);
%>
	です。
</body>
</html>