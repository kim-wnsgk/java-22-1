<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>List</title>
</head>
<body>
	<%@ include file="declaration.jsp" %>
	<div>
		<h1>Foods</h1>
		
		<table border="1">
			<tr class="categories" style="font-size:1.2em;">
				<th>식품명</th><th>에너지(kcal)</th><th>수분(g)</th><th>단백질(g)</th><th>지방(g)</th><th>탄수화물(g)</th><th>총당류(g)</th><th>자당(g)</th><th>포도당(g)</th><th>과당(g)</th><th>유당(g)</th><th>맥아당(g)</th><th>총 식이섬유(g)</th><th>show details..</th>
			</tr>
			<%
			List<Food> foodList = manager.get();
			for(Food food:foodList) { %>
				<tr style="color:#888888;">
				<th style="font-size:1.2em; color:black;"><%=food.kName%></th><th><%=food.energy%></th><th><%=food.water%></th><th><%=food.protein%></th><th><%=food.fat%></th><th><%=food.carbo%></th><th><%=food.sugar%></th><th><%=food.jadang%></th><th><%=food.pododang%></th><th><%=food.gwadang%></th><th><%=food.yudang%></th><th><%=food.mdang%></th><th><%=food.fiber%></th>
				<th><a href="detailView.jsp?name=<%=food.getName()%>" style="font-size:1.5em;"> &raquo;</a></th>
			</tr>
			<%
			}
			%>
			
			
		</table>
	</div>

</body>
</html>