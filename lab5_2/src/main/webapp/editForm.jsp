<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	
	%>
	<p><%=id %>�� ������ ������ �Է��Ͻÿ�.</p>

	<form name="editform" action="editProcess.jsp" method="get">	
		<input type="text" name="id" placeholder="id"/><br>
		<input type="text" name="name" placeholder="name"/><br>
		<input type="text" name="major" placeholder="major"/><br>
		<input type="text" name="grade" placeholder="grade"/><br>
		<input type="text" name="age" placeholder="age"/><br>
		
		<input type="submit" value="�Է�"/>
	</form>
</body>
</html>