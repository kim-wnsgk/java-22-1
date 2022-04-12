<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dao.FoodDaoImpl"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	FoodDaoImpl fdImpl = new FoodDaoImpl();
	
	String sample_id = request.getParameter("sample_id");
	
	int ret = fdImpl.delete(sample_id);
	
	response.sendRedirect("lab4.jsp");
	%>
</body>
</html>