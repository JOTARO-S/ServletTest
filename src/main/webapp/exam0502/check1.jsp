<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Iチェックボックス</title>
</head>
<body>

<h3>getParameter()メソッドを使用</h3>
	<form method="POST" action="check2.jsp">
		<p>あなたがよく使用するサーバーサイド技術は？</p>
		<input type="checkbox" name="tech" value="JSP" />JSP
		<input type="checkbox" name="tech" value="サーブレット" />サーブレット
		<input type="checkbox" name="tech" value="ASP.NET" />ASP.NET
		<input type="checkbox" name="tech" value="PHP" />PHP
		<input type="submit" value="送信" />
	</form>
<hr>
<h3>配列、getParameterValuesを使用</h3>
	<form method="POST" action="check3.jsp">
		<p>あなたがよく使用するサーバーサイド技術は？</p>
		<input type="checkbox" name="tech" value="JSP" />JSP
		<input type="checkbox" name="tech" value="サーブレット" />サーブレット
		<input type="checkbox" name="tech" value="ASP.NET" />ASP.NET
		<input type="checkbox" name="tech" value="PHP" />PHP
		<input type="submit" value="送信" />
	</form>

</body>
</html>