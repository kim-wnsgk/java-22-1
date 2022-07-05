<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@page import="dto.FoodBean" %>
<%@page import="dao.FoodDaoImpl" %>

<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Detail View</title>
</head>
<body>
	<div>
		<h2>${foodBean.getName()}'s details</h2>
		<ul>
			<li>sample_id : ${foodBean.getSample_id()}</li>
			<li>식품명 : ${foodBean.getName()}</li>
			<li>식품상세분류 : ${foodBean.getCategory()}</li>
			<li>에너지(kcal) : <${foodBean.getCalorie()}</li>
			<li>용량 : ${foodBean.getServing_size()}</li>
			<li>수분(g) : ${foodBean.getWater()}</li>
			<li>단백질(g) : ${foodBean.getProtein()}</li>
			<li>지방(g) : ${foodBean.getFat()}</li>
			<li>탄수화물(g) : ${foodBean.getCarbohydrate()}</li>
			<li>총당류(g) : ${foodBean.getSugars()}</li>
			<li>식이섬유(g) : ${foodBean.getFiber()}</li>
			<li>칼슘(mg) : ${foodBean.getCalcium()}</li>
			<li>철(mg) : ${foodBean.getIron()}</li>
			<li>마그네슘(mg) : ${foodBean.getMagnesium()}</li>
			<li>인(mg) : ${foodBean.getPhosphorus()}</li>
			<li>칼륨(mg) : ${foodBean.getPotassium()}</li>
			<li>나트륨(mg) : ${foodBean.getSodium()}</li>
			<li>아연(mg) : ${foodBean.getZinc()}</li>
			<li>구리(mg) : ${foodBean.getCopper()}</li>
			<li>망간(mg) : ${foodBean.getManganese()}</li>
			<li>셀레늄(ug) : ${foodBean.getSelenium()}</li>

		</ul>
		
	</div>
</body>
</html>