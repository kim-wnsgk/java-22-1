<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- isErrorPage.jsp --%>
<%@ page isErrorPage=“true” %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Exception</title>
</head>
<body>
	오류가 발생하였습니다. 
	오류 유형: <%= exception.getClass().getName() %>
	오류 메시지: <%= exception.getMessage() %>
</body>
</html>
