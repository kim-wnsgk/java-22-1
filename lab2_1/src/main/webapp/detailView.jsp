<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Detail View</title>
</head>
<body>
<%@ include file= "declaration.jsp" %>
	<%
	String name = request.getParameter("name");
	Food food = manager.get(name);
	%>
	<jsp:include page="header.jsp"/>
	<div>
		<h2><%=food.kName%>'s details</h2>
		<ul>
			<li>칼로리 : <%=food.energy %></li>
			<li>수분 : <%=food.water%></li>
			<li>단백질 : <%=food.protein%></li>
			<li>지방 : <%=food.fat%></li>
			<li>탄수화물 : <%=food.carbo%></li>
			<li>총당류 : <%=food.sugar%></li>
			<li>자당 : <%=food.jadang%></li>
			<li>포도당 : <%=food.pododang%></li>
			<li>과당 : <%=food.gwadang%></li>
			<li>유당 : <%=food.yudang%></li>
			<li>맥아당 : <%=food.mdang%></li>
			<li>총 식이섬유 : <%=food.fiber%></li>
		</ul>
		
		<jsp:include page="footer.jsp">
			<jsp:param name="course" value="Computer engineering"/>
			<jsp:param name="number" value="32181046"/>
			<jsp:param name="name" value="Kim Junha"/>
		</jsp:include>
	</div>
</body>
</html>