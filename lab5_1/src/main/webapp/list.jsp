<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "x" uri="http://java.sun.com/jsp/jstl/xml" %>
    
<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% session.setAttribute("fbList", fbList) %>
	mode : ${mode}
	
	<table border=1>
		<tr>
			<td>sample_id</td> <td>식품명</td> <td>식품상세분류</td> <td>에너지(kcal)</td> <td>용량</td> <td>수분(g)</td> <td>단백질(g)</td> <td>지방(g)</td> <td>탄수화물(g)</td> <td>총당류(g)</td> <td>총 식이섬유(g)</td> <td>칼슘(mg)</td> <td>철(mg)</td> <td>마그네슘(mg)</td> <td>인(mg</td> <td>칼륨(mg)</td> <td>나트륨(mg)</td> <td>아연(mg)</td> <td>구리(mg)</td> <td>망간(mg)</td> <td>셀레늄(ug)</td> <td>${mode}</td>
		</tr>

	<c:forEach var="foodBean" items="${fbList}">
		<tr>	
			<td><${foodBean.getSample_id()}</td>
			<td>${foodBean.getName()}</td>
			<td>${foodBean.getCategory()}</td>
			<td>${foodBean.getCalorie()}</td>
			<td>${foodBean.getServing_size()}</td>
			<td>${foodBean.getWater()}</td>
			<td>${foodBean.getProtein()}</td>
			<td>${foodBean.getFat()}</td>
			<td>${foodBean.getCarbohydrate()}</td>
			<td>${foodBean.getSugars()}</td>
			<td>${foodBean.getFiber()}</td>
			<td>${foodBean.getCalcium()}</td>
			<td>${foodBean.getIron()}</td>
			<td>${foodBean.getMagnesium()}</td>
			<td>${foodBean.getPhosphorus()}</td>
			<td>${foodBean.getPotassium()}</td>
			<td>${foodBean.getSodium()}</td>
			<td>${foodBean.getZinc()}</td>
			<td>${foodBean.getCopper()}</td>
			<td>${foodBean.getManganese()}</td>
			<td>${foodBean.getSelenium()}</td>
			<c:if test="${mode eq 'delete'}">
				<td><a href="DeleteFoodAction.do?sample_id=${foodBean.getSample_id()}">>></a></td>
			</c:if>
			<c:if test="${mode eq 'edit'}">
				<td><a href="EditViewFoodAction.do?sample_id=${foodBean.getSample_id()}">>></a></td>
			</c:if>
			<c:if test="${empty mode}">
				<td><a href="detailView.jsp?sample_id=${foodBean.getSample_id()}" >>></a></td>
			</c:if>
			
		</tr>
	</c:forEach>
	</table>
	
</body>
</html>