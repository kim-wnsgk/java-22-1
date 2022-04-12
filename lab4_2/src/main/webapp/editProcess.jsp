<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dao.GradeDaoImpl"%>
<%@ page import="dto.GradeBean"%>
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
			String name = request.getParameter("name");
			String major = request.getParameter("major");
			Double grade = Double.parseDouble(request.getParameter("grade"));
			Double age = Double.parseDouble(request.getParameter("age"));
			

			
			GradeBean editFood = new GradeBean(id, name, major, grade, age);
			
			int ret = fdImpl.edit(editFood);
			
			response.sendRedirect("lab4.jsp");
	%>
</body>
</html>