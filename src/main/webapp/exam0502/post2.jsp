<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ポストデータ</title>
</head>
<body>
<%
	//選択ボックスanimalの値を取得
	String animal = request.getParameter("animal");
	//選択ボックスの値に応じてメッセージを変化
	if (animal.equals("ham")) {
		out.print("つぶらな瞳がかわいい");
	} else if(animal.equals("dog")) {
		out.print("ペットです");
	} else if(animal.equals("cat")) {
		out.print("気ままです");
	} else {
		out.print("不明。");
	}
%>
<br><a href="post1.jsp">戻る</a>
</body>
</html>