<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="dto.FoodBean" %>
<%@page import="dao.FoodDaoImpl" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Detail View</title>
</head>
<body>
	<%

	String sample_id = request.getParameter("sample_id");
	FoodDaoImpl fdImpl = new FoodDaoImpl();

	FoodBean food = fdImpl.select(sample_id);
	%> 
	<div>
		<h2><%=food.getName()%>'s details</h2>
		<ul>
			<li>sample_id : <%=food.getSample_id() %></li>
			<li>��ǰ�� : <%=food.getName() %></li>
			<li>��ǰ�󼼺з� : <%=food.getCategory() %></li>
			<li>������(kcal) : <%=food.getCalorie() %></li>
			<li>�뷮 : <%=food.getServing_size() %></li>
			<li>����(g) : <%=food.getWater() %></li>
			<li>�ܹ���(g) : <%=food.getProtein() %></li>
			<li>����(g) : <%=food.getFat() %></li>
			<li>ź��ȭ��(g) : <%=food.getCarbohydrate() %></li>
			<li>�Ѵ��(g) : <%=food.getSugars() %></li>
			<li>���̼���(g) : <%=food.getFiber() %></li>
			<li>Į��(mg) : <%=food.getCalcium() %></li>
			<li>ö(mg) : <%=food.getIron() %></li>
			<li>���׳׽�(mg) : <%=food.getMagnesium() %></li>
			<li>��(mg) : <%=food.getPhosphorus() %></li>
			<li>Į��(mg) : <%=food.getPotassium() %></li>
			<li>��Ʈ��(mg) : <%=food.getSodium() %></li>
			<li>�ƿ�(mg) : <%=food.getZinc() %></li>
			<li>����(mg) : <%=food.getCopper() %></li>
			<li>����(mg) : <%=food.getManganese() %></li>
			<li>������(ug) : <%=food.getSelenium() %></li>

		</ul>
		
	</div>
</body>
</html>