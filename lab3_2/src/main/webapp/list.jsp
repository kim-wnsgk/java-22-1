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
	<p><%=csvList.size()%>���� ����Ʈ�� �����մϴ�.</p>
	

	<table border=1>
		<tr>
			<th>Sample Id</th><th>��ǰ��</th><th>��ǰ�󼼺з�</th><th>������(kcal)</th>
			<th>����(g)</th><th>�ܹ���(g)</th><th>����(g)</th><th>ź��ȭ��(g)</th>
			<th>�Ѵ��(g)</th><th>�� ���̼���(g)</th><th>Į��(mg)</th><th>ö(mg)</th>
			<th>���׳׽�(mg)</th><th>��(mg)</th><th>Į��(mg)</th><th>��Ʈ��(mg)</th>
			<th>�ƿ�(mg)</th><th>����(mg)</th><th>����(mg)</th><th>������(ug)</th><th>detail view</th>
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