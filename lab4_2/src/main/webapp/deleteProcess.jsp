<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dao.GradeDaoImpl"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	GradeDaoImpl fdImpl = new GradeDaoImpl();
		
		String id = request.getParameter("id");
		
		int ret = fdImpl.delete(id);
		
		response.sendRedirect("lab4.jsp");
	%>
</body>
</html>