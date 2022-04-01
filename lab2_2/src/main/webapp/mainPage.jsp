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
	<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	%>
	
	<h1><%=id %>님 환영합니다~</h1>
	
	<%-- 액션 태그 --%>
	<jsp:include page="list.jsp"/>
	<jsp:include page="footer.jsp">
			<jsp:param name="lab" value="lab2_2"/>
			<jsp:param name="course" value="Computer engineering"/>
			<jsp:param name="number" value="32181046"/>
			<jsp:param name="name" value="Kim Junha"/>
	</jsp:include>
</body>
</html>