<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dto.FoodBean" %>
<%@ page import="dao.FoodParser" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="declaration.jsp" %>

	<jsp:include page="header.jsp"/>
	<%
	String name = request.getParameter("name");
	FoodBean food = manager.get(name);
	%>
	<jsp:include page="header.jsp"/>
	<div>
		<h2><%=food.getName()%>'s details</h2>
		<ul>
			<li>식품명 : <jsp:getProperty name="<%=food %>" property="name"/> </li>
			<li>식품 상세분류 : <jsp:getProperty name=<%=food %> property="category"/> </li>
			<li>에너지(kcal) : <jsp:getProperty name=<%=food %> property="calorie"/> </li>
			<li>수분(g) : <jsp:getProperty name=<%=food %> property="water"/> </li>
			<li>단백질(g) : <jsp:getProperty name=<%=food %> property="protein"/> </li>
			<li>지방(g) : <jsp:getProperty name=<%=food %> property="fat"/> </li>
			<li>탄수화물(g) : <jsp:getProperty name=<%=food %> property="carbohydrate"/> </li>
			<li>총당류(g) : <jsp:getProperty name=<%=food %> property="sugars"/> </li>
			<li>총 식이섬유(g) : <jsp:getProperty name=<%=food %> property="fiber"/> </li>
			<li>칼슘(mg) : <jsp:getProperty name=<%=food %> property="calcium"/> </li>
			<li>철(mg) : <jsp:getProperty name=<%=food %> property="iron"/> </li>
			<li>마그네슘(mg) : <jsp:getProperty name=<%=food %> property="magnesium"/> </li>
			<li>인(mg) : <jsp:getProperty name=<%=food %> property="phosphorus"/> </li>
			<li>칼륨(mg) : <jsp:getProperty name=<%=food %> property="potassium"/> </li>
			<li>나트륨(mg) : <jsp:getProperty name=<%=food %> property="sodium"/> </li>
			<li>아연(mg) : <jsp:getProperty name=<%=food %> property="zinc"/> </li>
			<li>구리(mg) : <jsp:getProperty name=<%=food %> property="copper"/> </li>
			<li>망간(mg) : <jsp:getProperty name=<%=food %> property="manganese"/> </li>
			<li>셀레늄(ug) : <jsp:getProperty name=<%=food %> property="selenium"/> </li>
			
		</ul>
	<jsp:include page="footer.jsp">
		<jsp:param name="lab" value="lab3_1"/> 
		<jsp:param name="course" value="computer engineering"/>
		<jsp:param name="number" value="32181046"/>
		<jsp:param name="name" value="Kim junha"/>
	</jsp:include>
</body>
</html>