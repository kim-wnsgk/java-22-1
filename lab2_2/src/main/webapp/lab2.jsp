<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap" style="margin:0 auto;">
		<jsp:include page="header.jsp"/>
		<jsp:include page="login.jsp"/>
		<jsp:include page="footer.jsp">
			<jsp:param name="lab" value="lab2_2"/>
			<jsp:param name="course" value="Computer engineering"/>
			<jsp:param name="number" value="32181046"/>
			<jsp:param name="name" value="Kim Junha"/>
		</jsp:include>
	</div>
</body>
</html>