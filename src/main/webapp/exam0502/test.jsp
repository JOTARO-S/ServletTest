<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>@o@</title>
</head>
<body>
<form>
	<input type="text" name="test" />
	<input type="submit" value="決定" />
</form>
<% out.println(request.getServletPath()); %>


</body>
</html>