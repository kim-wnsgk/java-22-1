<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>${id}의 수정할 정보를 입력하시오.</p>

	<form name="editform" action="editProcess.jsp?sample_id=${id}" method="get">	
		<input type="text" name="name" placeholder="name"/><br>
		<input type="text" name="category" placeholder="category"/><br>
		<input type="text" name="calorie" placeholder="calorie"/><br>
		<input type="text" name="serving_size" placeholder="serving_size"/><br>
		<input type="text" name="water" placeholder="water"/><br>
		<input type="text" name="protein" placeholder="protein"/><br>
		<input type="text" name="fat" placeholder="fat"/><br>
		<input type="text" name="carbohydrate" placeholder="carbohydrate"/><br>
		<input type="text" name="sugars" placeholder="sugars"/><br>
		<input type="text" name="fiber" placeholder="fiber"/><br>
		<input type="text" name="calcium" placeholder="calcium"/><br>
		<input type="text" name="iron" placeholder="iron"/><br>
		<input type="text" name="magnesium" placeholder="magnesium"/><br>
		<input type="text" name="phosphorus" placeholder="phosphorus"/><br>
		<input type="text" name="potassium" placeholder="potassium"/><br>
		<input type="text" name="sodium" placeholder="sodium"/><br>
		<input type="text" name="zinc" placeholder="zinc"/><br>
		<input type="text" name="copper" placeholder="copper"/><br>
		<input type="text" name="manganese" placeholder="manganese"/><br>
		<input type="text" name="selenium" placeholder="selenium"/><br>
		<input type="submit" value="입력"/>
	</form>
</body>
</html>