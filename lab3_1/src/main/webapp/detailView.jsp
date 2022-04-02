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
			<li>��ǰ�� : <jsp:getProperty name="<%=food %>" property="name"/> </li>
			<li>��ǰ �󼼺з� : <jsp:getProperty name=<%=food %> property="category"/> </li>
			<li>������(kcal) : <jsp:getProperty name=<%=food %> property="calorie"/> </li>
			<li>����(g) : <jsp:getProperty name=<%=food %> property="water"/> </li>
			<li>�ܹ���(g) : <jsp:getProperty name=<%=food %> property="protein"/> </li>
			<li>����(g) : <jsp:getProperty name=<%=food %> property="fat"/> </li>
			<li>ź��ȭ��(g) : <jsp:getProperty name=<%=food %> property="carbohydrate"/> </li>
			<li>�Ѵ��(g) : <jsp:getProperty name=<%=food %> property="sugars"/> </li>
			<li>�� ���̼���(g) : <jsp:getProperty name=<%=food %> property="fiber"/> </li>
			<li>Į��(mg) : <jsp:getProperty name=<%=food %> property="calcium"/> </li>
			<li>ö(mg) : <jsp:getProperty name=<%=food %> property="iron"/> </li>
			<li>���׳׽�(mg) : <jsp:getProperty name=<%=food %> property="magnesium"/> </li>
			<li>��(mg) : <jsp:getProperty name=<%=food %> property="phosphorus"/> </li>
			<li>Į��(mg) : <jsp:getProperty name=<%=food %> property="potassium"/> </li>
			<li>��Ʈ��(mg) : <jsp:getProperty name=<%=food %> property="sodium"/> </li>
			<li>�ƿ�(mg) : <jsp:getProperty name=<%=food %> property="zinc"/> </li>
			<li>����(mg) : <jsp:getProperty name=<%=food %> property="copper"/> </li>
			<li>����(mg) : <jsp:getProperty name=<%=food %> property="manganese"/> </li>
			<li>������(ug) : <jsp:getProperty name=<%=food %> property="selenium"/> </li>
			
		</ul>
	<jsp:include page="footer.jsp">
		<jsp:param name="lab" value="lab3_1"/> 
		<jsp:param name="course" value="computer engineering"/>
		<jsp:param name="number" value="32181046"/>
		<jsp:param name="name" value="Kim junha"/>
	</jsp:include>
</body>
</html>