<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%-- isErrorPage.jsp --%>
<%@ page isErrorPage=��true�� %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Exception</title>
</head>
<body>
	������ �߻��Ͽ����ϴ�. 
	���� ����: <%= exception.getClass().getName() %>
	���� �޽���: <%= exception.getMessage() %>
</body>
</html>
