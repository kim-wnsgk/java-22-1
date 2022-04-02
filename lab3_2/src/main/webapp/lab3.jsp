<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>lab3_1</title>
</head>
<body>
	<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(name.isEmpty() || id.isEmpty() || pw.isEmpty()) {
		response.sendRedirect("register.jsp");
	}
	%>
	<div>
		<p style="font-weight:bold; font-size:2em"><%= name%>님 환영합니다.</p>
		<p style="font-weight:bold; font-size:1.5em">id : <%=id%></p>
	</div>
	<jsp:include page="header.jsp"/>
	<jsp:include page="list.jsp"/>
	<jsp:include page="footer.jsp">
		<jsp:param name="lab" value="lab3_2"/> 
		<jsp:param name="course" value="computer engineering"/>
		<jsp:param name="number" value="32181046"/>
		<jsp:param name="name" value="Kim junha"/>
	</jsp:include>
</body>
</html>