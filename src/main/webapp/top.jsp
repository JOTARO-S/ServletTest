<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>トップページ</title>
</head>
<body>
	<h3>リンク</h3>
	
	<form method="post" action="LinkTest">
		<label>exam0501</label>
		<input type="hidden" name="exam" value="exam0501/">
		<input type="hidden" name="jsp" value=".jsp">
		<select name="link" style="width: 250px;">
			<option value="Counter">Counter</option>
			<option value="date">date</option>
			<option value="fowardFrom">fowardFrom</option>
			<option value="fowardFrom2">fowardFrom2</option>
			<option value="for_jsp">for_jsp</option>
			<option value="hello">hello</option>
			<option value="hellocall">hellocall</option>
			<option value="include">include</option>
			<option value="include3">include3</option>
			<option value="includeSrc">includeSrc</option>
			<option value="NewFile">NewFile</option>
			<option value="page82">page82</option>
			<option value="page82">test</option>
		</select> 
		<input type="submit" value="送信">
	</form>
	
	<form method="post" action="LinkTest" style="margin-top:10px;">
		<label>exam0502</label>
		<input type="hidden" name="exam" value="exam0502/">
		<input type="hidden" name="jsp" value=".jsp">
		<select name="link" style="width: 250px;">
			<option value="alink1">クエリ情報(alink1)</option>
			<option value="check1">文字コード(check1)</option>
			<option value="choose">taglib choose</option>
			<option value="for">taglib for</option>
			<option value="headers">header</option>
			<option value="hello3">hello3</option>
			<option value="if">if</option>
			<option value="japan1">文字コード</option>
			<option value="map">map</option>
			<option value="path">path</option>
			<option value="post1">post1</option>
			<option value="qyery1">quary1</option>
			<option value="set">set</option>
			<option value="status">status</option>
			<option value="test">test</option>
		</select> 
		<input type="submit" value="送信">
	</form>
	
	<form method="post" action="LinkTest" style="margin-top:10px;">
		<label>exam0508</label>
		<input type="hidden" name="exam" value="exam0508/">
		<input type="hidden" name="jsp" value=".jsp">
		<select name="link" style="width: 250px;">
			<option value="format_number">format_number</option>
			<option value="format_number_pattern">format_number_pattern</option>
			<option value="format_date">format_date</option>
			<option value="format_date_pattern">format_date_pattern</option>
			<option value="functions">Functionタグライブラリ</option>
			<option value="locale">locate(時間帯の指定)</option>
			<option value="parse">i18nタグライブラリ(parse)</option>
			<option value="select1">SELECT文</option>
			<option value="query1">Query(UPDATE文で新規追加)</option>
			<option value="serv_post1">Servletを用いたdoPost</option>
		</select> 
		<input type="submit" value="送信">
	</form>
	
	<form method="post" action="LinkTest" style="margin-top:10px;">
		<label>exam0509</label>
		<input type="hidden" name="exam" value="exam0509/">
		<input type="hidden" name="jsp" value=".jsp">
		<select name="link" style="width: 250px;">
			<option value="bmi">BMI指数の計算処理</option>
			<option value="insert_from">SQLクエリ(UPDATE)</option>
		</select> 
		<input type="submit" value="送信">
	</form>
	
	<form method="post" action="LinkTest" style="margin-top:10px;">
		<label>exam0510</label>
		<input type="hidden" name="exam" value="exam0510/">
		<input type="hidden" name="jsp" value=".jsp">
		<select name="link" style="width: 250px;">
			<option value="insert_from">トランザクション</option>
		</select> 
		<input type="submit" value="送信">
	</form>
	
	<form method="post" action="LinkTest" style="margin-top:10px;">
		<label>サーブレット</label>
		<input type="hidden" name="exam" value="">
		<input type="hidden" name="jsp" value="">
		<select name="link" style="width: 236px;">
			<option value="Result">SQLクエリ(SELECT)</option>
			<option value="shoppingCart">ショッピングカート</option>
			<option value="login">login</option>
		</select> 
		<input type="submit" value="送信">
	</form>
</body>
</html>