<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>footer</title>
</head>
<body>
	<%@ include file="declaration.jsp" %>
	
	<%
	String lab = request.getParameter("lab");
	String course = request.getParameter("course");
	int number = Integer.parseInt(request.getParameter("number"));
	String name = request.getParameter("name");
	%>
	<hr/>
	<form name="search" action="search.jsp" method="post">
		<input type="text" name="search" placeholder="검색어를 입력하시오"/>
		<input type="submit" value="검색"/>
	</form>
	<h5 style="text-align:right; color:gray"><%=lab%><br/><br/>
		<%=course%><br/>
		<%=number%> <%=name%></h5>
</body>
</html>