<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%@ page import="dto.GradeBean" %>
<%@ page import="dao.DataImporter" %>
<%@ page import="dao.FoodParser" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
List<List<String>> csvList = new ArrayList<List<String>>();  // csv 파일 받을 리스트
	String csvPath = "C:/Users/User/OneDrive/바탕 화면/학교/자바/MFSD-Agriculture.csv";
	
	csvList = DataImporter.loadCSV(csvPath);
	
	FoodParser manager = new FoodParser();
	List<GradeBean> foodList = new ArrayList<GradeBean>();
	
	for (int i = 1; i < csvList.size(); i++) { 
		GradeBean food = new GradeBean();
		food.setSampleId(csvList.get(i).get(0));
		food.setName(csvList.get(i).get(1));
		food.setCategory(csvList.get(i).get(2));
		
		food.setCalorie(Double.parseDouble(csvList.get(i).get(3)));
		food.setWater(Double.parseDouble(csvList.get(i).get(4)));
		food.setProtein(Double.parseDouble(csvList.get(i).get(5)));
		food.setFat(Double.parseDouble(csvList.get(i).get(6)));
		food.setCarbohydrate(Double.parseDouble(csvList.get(i).get(7)));
		food.setSugars(Double.parseDouble(csvList.get(i).get(8)));
		food.setFiber(Double.parseDouble(csvList.get(i).get(9)));
		food.setCalcium(Double.parseDouble(csvList.get(i).get(10)));
		food.setIron(Double.parseDouble(csvList.get(i).get(11)));
		food.setMagnesium(Double.parseDouble(csvList.get(i).get(12)));
		food.setPhosphorus(Double.parseDouble(csvList.get(i).get(13)));
		food.setPotassium(Double.parseDouble(csvList.get(i).get(14)));
		food.setSodium(Double.parseDouble(csvList.get(i).get(15)));
		food.setZinc(Double.parseDouble(csvList.get(i).get(16)));
		food.setCopper(Double.parseDouble(csvList.get(i).get(17)));
		food.setManganese(Double.parseDouble(csvList.get(i).get(18)));
		food.setSelenium(Double.parseDouble(csvList.get(i).get(19)));
		manager.add(food);
	}
%>
</body>
</html>