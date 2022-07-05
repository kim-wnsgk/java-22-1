<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>lab5</title>
</head>
<body>

<jsp:include page="menu.jsp"/>
<jsp:include page="list.jsp">
	<jsp:param name="mode" value="${mode}"/>
</jsp:include>
</body>
</html>