<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Footer</title>
</head>
<body>
	<%
	String lab = request.getParameter("lab");
	String course = request.getParameter("course");
	int number = Integer.parseInt(request.getParameter("number"));
	String name = request.getParameter("name");
	%>
	<hr/>
	<h5 style="text-align:right; color:gray"><%=lab%><br/><br/>
		<%=course%><br/>
		<%=number%> <%=name%></h5>
		
</body>
</html>