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
			<li>식품명 : <%=food.getName() %></li>
			<li>식품상세분류 : <%=food.getCategory() %></li>
			<li>에너지(kcal) : <%=food.getCalorie() %></li>
			<li>용량 : <%=food.getServing_size() %></li>
			<li>수분(g) : <%=food.getWater() %></li>
			<li>단백질(g) : <%=food.getProtein() %></li>
			<li>지방(g) : <%=food.getFat() %></li>
			<li>탄수화물(g) : <%=food.getCarbohydrate() %></li>
			<li>총당류(g) : <%=food.getSugars() %></li>
			<li>식이섬유(g) : <%=food.getFiber() %></li>
			<li>칼슘(mg) : <%=food.getCalcium() %></li>
			<li>철(mg) : <%=food.getIron() %></li>
			<li>마그네슘(mg) : <%=food.getMagnesium() %></li>
			<li>인(mg) : <%=food.getPhosphorus() %></li>
			<li>칼륨(mg) : <%=food.getPotassium() %></li>
			<li>나트륨(mg) : <%=food.getSodium() %></li>
			<li>아연(mg) : <%=food.getZinc() %></li>
			<li>구리(mg) : <%=food.getCopper() %></li>
			<li>망간(mg) : <%=food.getManganese() %></li>
			<li>셀레늄(ug) : <%=food.getSelenium() %></li>

		</ul>
		
	</div>
</body>
</html>