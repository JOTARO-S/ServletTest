<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! int count = 0; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Counter</title>
</head>
<body>
<%
	int local = 0;
	count++;
	local++;
	out.println("宣言部count : " + count);
	out.println("ローカルlocal : " + local);
%>
</body>
</html>