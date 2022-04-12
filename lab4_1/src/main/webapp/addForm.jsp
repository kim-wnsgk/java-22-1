<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>추가할 정보를 입력하시오.</p>
	<form name="addform" action="addProcess.jsp" method="post">
		<input type="text" name="sample_id" placeholder="sample_id"/><br>
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