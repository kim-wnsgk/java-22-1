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
		<input type="text" name="id" placeholder="id"/><br>
		<input type="text" name="name" placeholder="name"/><br>
		<input type="text" name="major" placeholder="major"/><br>
		<input type="text" name="grade" placeholder="grade"/><br>
		<input type="text" name="age" placeholder="age"/><br>
		
		<input type="submit" value="입력"/>
	</form>
</body>
</html>