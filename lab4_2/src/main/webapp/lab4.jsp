<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>lab4</title>
</head>
<body>
<%
String mode = request.getParameter("mode");
%>
<jsp:include page="menu.jsp"/>
<jsp:include page="list.jsp">
	<jsp:param name="mode" value="<%=mode%>"/>
</jsp:include>
</body>
</html>