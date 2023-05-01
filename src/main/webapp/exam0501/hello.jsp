<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- pageEncoding はjspファイルの文字コードと実際の出力が同じであれば省略可能 -->
   <%! String msg = "こんにちは！"; %> <%--<%! %> で囲んだ箇所は変数やメソッドを宣言する --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=msg %></title> <%-- <%= %> で囲んだ箇所は式などを記入しJSPからHTMLを出力するために使用 --%>
</head>
<body>

<%-- 指定された文字を繰り返し処理 --%> <%--<% %>で囲んだ箇所はjavaの処理を実行する --%>
<% for(int i = 0; i < 5; i++) {
	out.println(msg + "<br>");
}
%>

<!-- testest -->
<!--
<form action="../HelloWorld" method="post">
	<label>名前:</label>
    <input type="text" name="name" required>
    <button type="submit">HelloWorld</button>
</form>
 -->
 
 
 <%-- 
 
 <jsp:include>：他のJSPページをインクルードするために使用されます。

<jsp:forward>：別のJSPページに転送するために使用されます。

<jsp:useBean>：JavaBeansを使用するために使用されます。

<jsp:setProperty>：JavaBeansのプロパティに値を設定するために使用されます。

<jsp:getProperty>：JavaBeansのプロパティの値を取得するために使用されます。

<jsp:param>：JSPページにパラメータを渡すために使用されます。

<jsp:scriptlet>：JSPページ内でJavaコードを実行するために使用されます。

  --%>

<jsp:include page="include.jsp" /> <!-- jsp:include page="include.jsp" ⇒ include.jsp の内容を埋め込む(インクルードする)処理 -->
</body>
</html>