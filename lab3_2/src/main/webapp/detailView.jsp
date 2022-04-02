<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<jsp:include page="list.jsp"/>
	<jsp:include page="footer.jsp">
		<jsp:param name="lab" value="lab3_1"/> 
		<jsp:param name="course" value="computer engineering"/>
		<jsp:param name="number" value="32181046"/>
		<jsp:param name="name" value="Kim junha"/>
	</jsp:include>
</body>
</html>