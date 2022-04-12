<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="declaration.jsp" %>
	<%
	String search = request.getParameter("search");
		
		manager.removeAll();
		for (int i = 1; i < csvList.size(); i++) { 
			GradeBean food = new GradeBean();
			for (int j = 0; j < csvList.get(0).size(); j++) {
		if (csvList.get(i).get(j).contains(search)) {
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
			continue;
		}
			}
		}
	%>
	<p><%=search%>를 검색한 결과입니다.</p>
	<table border=1>
		<tr>
			<th>Sample Id</th><th>식품명</th><th>식품상세분류</th><th>에너지(kcal)</th>
			<th>수분(g)</th><th>단백질(g)</th><th>지방(g)</th><th>탄수화물(g)</th>
			<th>총당류(g)</th><th>총 식이섬유(g)</th><th>칼슘(mg)</th><th>철(mg)</th>
			<th>마그네슘(mg)</th><th>인(mg)</th><th>칼륨(mg)</th><th>나트륨(mg)</th>
			<th>아연(mg)</th><th>구리(mg)</th><th>망간(mg)</th><th>셀레늄(ug)</th><th>detail view</th>
		</tr>
	<%
	for (GradeBean f : manager.getList()) {
			out.print(String.format(
			"<tr>" +
				"<td>%s</td>" +
				"<td>%s</td>" +
				"<td>%s</td>" +
				"<td>%.1f</td>" + "<td>%.1f</td>" + "<td>%.1f</td>" +
				"<td>%.1f</td>" + "<td>%.1f</td>" + "<td>%.1f</td>" +
				"<td>%.1f</td>" + "<td>%.1f</td>" + "<td>%.1f</td>" +
				"<td>%.1f</td>" + "<td>%.1f</td>" + "<td>%.1f</td>" + "<td>%.1f</td>" +
				"<td>%.1f</td>" + "<td>%.1f</td>" + "<td>%.1f</td>" + "<td>%.1f</td>" +
			"</tr>",	
			f.getSampleId(), f.getName(), f.getCategory(),
			f.getCalorie(), f.getWater(), f.getProtein(),
			f.getFat(), f.getCarbohydrate(), f.getSugars(),
			f.getFiber(), f.getCalcium(), f.getIron(),
			f.getMagnesium(), f.getPhosphorus(), f.getPotassium(),
			f.getSodium(), f.getZinc(), f.getCopper(), f.getManganese(), f.getSelenium()
			));
		}
	%>
	</table>
</body>
</html>