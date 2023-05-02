<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.Enumeration"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ヘッダ情報</title>
</head>
<body>
	<table border="1">
		<% 
		//リクエストヘッダ名の集合を取得
		Enumeration headers = request.getHeaderNames(); //クラウアントから送信されたヘッダ名の一覧を取得する
		//ヘッダ名を順番に取得、対応するヘッダ値とともに表示
		//hasMoreElementsメソッドは現在のポイントから見て次の要素がまだEnumerationオブジェクト内についているかどうか判定している。
		while (headers.hasMoreElements()) { 
			//nextElementメソッドでheadersに格納されている要素を取り出しながらポインタを1ずつずらしている
			String name = (String) headers.nextElement(); 
							
		%>
		<tr valign="top">
			<th><%=name%></th>
			<td><%=request.getHeader(name)%></td>
		</tr>
		<%
		}
		%>
	</table>

</body>
</html>