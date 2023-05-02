<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include3</title>
</head>
<body>
<h1>includeテスト</h1>
<jsp:include page="includeSrc2.jsp">
<jsp:param name="textsize" value="h1" />
</jsp:include>
</body>
</html>