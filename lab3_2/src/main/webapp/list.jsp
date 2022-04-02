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
	<p><%=csvList.size()%>개의 리스트가 존재합니다.</p>
	

	<table border=1>
		<tr>
			<th>Sample Id</th><th>식품명</th><th>식품상세분류</th><th>에너지(kcal)</th>
			<th>수분(g)</th><th>단백질(g)</th><th>지방(g)</th><th>탄수화물(g)</th>
			<th>총당류(g)</th><th>총 식이섬유(g)</th><th>칼슘(mg)</th><th>철(mg)</th>
			<th>마그네슘(mg)</th><th>인(mg)</th><th>칼륨(mg)</th><th>나트륨(mg)</th>
			<th>아연(mg)</th><th>구리(mg)</th><th>망간(mg)</th><th>셀레늄(ug)</th><th>detail view</th>
		</tr>
		<%
			for (FoodBean f : manager.getList()) {
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