<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="dto.GradeBean" %>
<%@page import="dao.GradeDaoImpl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Detail View</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	GradeDaoImpl fdImpl = new GradeDaoImpl();

	GradeBean grade = fdImpl.select(id);
	%> 
	<div>
		<h2><%=grade.getName()%>'s details</h2>
		<ul>
			<li>�й� : <%=grade.getId() %></li>
			<li>�̸� : <%=grade.getName() %></li>
			<li>���� : <%=grade.getMajor() %></li>
			<li>����(4.5 ����) : <%=grade.getGrade() %></li>
			<li>���� : <%=grade.getAge() %></li>
			

		</ul>
		
	</div>
</body>
</html>