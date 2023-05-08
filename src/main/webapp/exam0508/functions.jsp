<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="str" value="http://www.web-deil.com/bbs.aspx" />

<!DOCTYPE html>
<html>
	<head>
		<meta content="charset=UTF-8">
		<title>Functionタグライブラリ</title>
	</head>
	<body>
		str -> ${str}<br />
		fn:length -> ${fn:length(str)} <br />
		fn:toLowerCase(str) -> ${fn:toLowerCase(str)} <br />
		fn:toUpperCase(str) -> ${fn:toUpperCase(str)} <br />
		etc...Sevlet223p参照
	</body>
</html>