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
			<li>Į�θ� : <%=food.energy %></li>
			<li>���� : <%=food.water%></li>
			<li>�ܹ��� : <%=food.protein%></li>
			<li>���� : <%=food.fat%></li>
			<li>ź��ȭ�� : <%=food.carbo%></li>
			<li>�Ѵ�� : <%=food.sugar%></li>
			<li>�ڴ� : <%=food.jadang%></li>
			<li>������ : <%=food.pododang%></li>
			<li>���� : <%=food.gwadang%></li>
			<li>���� : <%=food.yudang%></li>
			<li>�ƾƴ� : <%=food.mdang%></li>
			<li>�� ���̼��� : <%=food.fiber%></li>
		</ul>
		
		<jsp:include page="footer.jsp">
			<jsp:param name="course" value="Computer engineering"/>
			<jsp:param name="number" value="32181046"/>
			<jsp:param name="name" value="Kim Junha"/>
		</jsp:include>
	</div>
</body>
</html>