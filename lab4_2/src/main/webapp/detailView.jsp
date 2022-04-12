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
			<li>학번 : <%=grade.getId() %></li>
			<li>이름 : <%=grade.getName() %></li>
			<li>전공 : <%=grade.getMajor() %></li>
			<li>학점(4.5 만점) : <%=grade.getGrade() %></li>
			<li>나이 : <%=grade.getAge() %></li>
			

		</ul>
		
	</div>
</body>
</html>