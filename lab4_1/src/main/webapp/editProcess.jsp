<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dao.FoodDaoImpl"%>
<%@ page import="dto.FoodBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%

		FoodDaoImpl fdImpl = new FoodDaoImpl();
			
			String sample_id = request.getParameter("sample_id");
			String name = request.getParameter("name");
			String category = request.getParameter("category");
			Double calorie = Double.parseDouble(request.getParameter("calorie"));
			Double serving_size = Double.parseDouble(request.getParameter("serving_size"));
			Double water = Double.parseDouble(request.getParameter("water"));
			Double protein = Double.parseDouble(request.getParameter("protein"));
			Double fat = Double.parseDouble(request.getParameter("fat"));
			Double carbohydrate = Double.parseDouble(request.getParameter("carbohydrate"));
			Double sugars = Double.parseDouble(request.getParameter("sugars"));
			Double fiber = Double.parseDouble(request.getParameter("fiber"));
			Double calcium = Double.parseDouble(request.getParameter("calcium"));
			Double iron = Double.parseDouble(request.getParameter("iron"));
			Double magnesium = Double.parseDouble(request.getParameter("magnesium"));
			Double phosphorus = Double.parseDouble(request.getParameter("phosphorus"));
			Double potassium = Double.parseDouble(request.getParameter("potassium"));
			Double sodium = Double.parseDouble(request.getParameter("sodium"));
			Double zinc = Double.parseDouble(request.getParameter("zinc"));
			Double copper = Double.parseDouble(request.getParameter("copper"));
			Double manganese = Double.parseDouble(request.getParameter("manganese"));
			Double selenium = Double.parseDouble(request.getParameter("selenium"));

			
			FoodBean editFood = new FoodBean(sample_id, name, category, calorie, serving_size, water, protein,
			fat, carbohydrate, sugars, fiber, calcium, iron, magnesium, phosphorus, potassium,
			sodium, zinc, copper, manganese, selenium);
			
			int ret = fdImpl.edit(editFood);
			
			response.sendRedirect("lab4.jsp");
	%>
</body>
</html>