<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
	span{
		width:50px;
		height:50px;
		line-height:50px;
		display:inline-block; 
		border:1px solid black;
		border-radius:10px;
		text-align:center;
		background:skyblue;
		}
	a {
		text-decoration:none;
		display:block;
		font-weight:bold;
	}
</style>
</head>
<body>
	<a href="lab4.jsp" style="display:inline;"><img width="100px" src="https://mblogthumb-phinf.pstatic.net/MjAyMDA4MDVfMjQy/MDAxNTk2NTg2NjU3Njcy.qC6QUYNCxdLie3juoSvYeopgrt5FAlkZQ5Brrh5aujUg.GN64ramyumZIJ9lIPWcFqqx_0P2jXG44q_SLSNCVJmAg.PNG.kyojjong/%EB%8B%A8%EA%B5%AD%EB%8C%80-%EC%95%B0%EB%B8%94%EB%9F%BC.png?type=w800"/></a>
	<span><a href="addForm.jsp">Add</a></span>
	<span><a href="lab4.jsp?mode=edit">Edit</a></span>
	<span><a href="lab4.jsp?mode=delete">Delete</a></span>
</body>
</html>