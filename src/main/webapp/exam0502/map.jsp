<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//マップにJSP, PHP, ASP.NET というキーを追加
	HashMap<String, String> map = new HashMap<String, String>();
	map.put("JSP","JavaServer Pages");
	map.put("PHP","PHP:Hypertext Preprocessor");
	map.put("ASP.NET","Active Server Page .NET");
	//出来上がったマップをページ属性mapsにセット
	pageContext.setAttribute("maps", map); //pageContext.setAttribute(ページ属性の名前, HashMapで宣言した変数);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Coreタグライブラリ</title>
</head>
<body>
<ul>
	<c:forEach var="item" items="${maps}">
		<li>${item.key}：${item.value}</li>
	</c:forEach>
</ul>

</body>
</html>