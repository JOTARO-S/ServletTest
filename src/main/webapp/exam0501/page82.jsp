<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>page82</title>
</head>
	<body>
<%-- メソッドを定義 %--でJSPの形式でコメント --%>
<%! //%と%の間であれば//でJavaの形式でコメントが可能
int i = 0; // i = 0 で変数宣言
int iIncrement() {
	return ++i; // i の 値を 1増加させて return する
} 
%>
<p>更新回数: <%= iIncrement() %></p> <%-- iIncrement()メソッドを呼び出す --%>

<!-- <!--でHTMLのコメント形式でコメント
<h1> 呼び出し禁止 </h1>
-->
	</body>
</html>