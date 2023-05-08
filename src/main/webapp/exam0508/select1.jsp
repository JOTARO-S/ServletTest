<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- Databaseタグライブラリを使用する際に入力する --%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%--データベースへの接続を確立 --%>
<sql:setDataSource var="db" dataSource="jdbc/test" />
<%--SELECT命令を実行 --%>
<sql:query var="rs" dataSource="${db}">
	SELECT * FROM address ORDER BY id</sql:query>

<!DOCTYPE html>
<html>
	<head>
		<meta content="charset=UTF-8">
		<title>タグライブラリ</title>
	</head>
	<body>
	<h1>住所一覧</h1>
	<table border="1">
	<tr>
		<th>名前</th>
		<th>住所</th>
		<th>電話番号</th>
		<th>E-Mailアドレス</th>
	</tr>
	<%-- 結果セットから順番にレコード（フィールド値）を取得 & 表示する --%>
	<c:forEach var="row" items="${rs.rows}">
	<tr>
		<td>${row.name}</td>
		<td>${row.address}</td>
		<td>${row.tel}</td>
		<td>${row.email}</td>
	</tr>
	</c:forEach>
	</table>
	</body>
</html>