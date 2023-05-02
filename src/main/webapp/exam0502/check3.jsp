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
	String[] techs = request.getParameterValues("tech"); //getParameterValues()メソッドにて配列の内容を取得
	String res = ""; //String型の変数 res を宣言
	for (String tech : techs) { //forループにてgetParameterValues()メソッドで取得した配列の内容を String tech に代入
		res += "「" + tech + "」&nbsp;"; //さっき宣言したres に「」 (&nbspは空白)をつけて techを追加する
	}	//techsがなくなるまで繰り返し処理
	out.println(res); //out.printlnにて res を出力
%>
	です。
</body>
</html>