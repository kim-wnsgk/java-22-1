<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Header</title>
<style>
	a{
	text-decoration:none;
	}
	header ul{
	height:75px;
	line-height:75px;
	list-style:none;
	background:black;
	overflow:hidden;
	}
	header ul li{
	width:200px;
	float:right;
	text-align:center;
	border-left:3px solid white;	
	}
	header ul li a{
	color:white;
	display:block;
	}
</style>
</head>
<body>
<header>
	<div>
		<a href="index.jsp">DKU</a>
		<a href="login.jsp">로그인</a>
		<a href="register.jsp">회원가입</a>
	</div>
		<ul>
			<li><a href="none">게이밍 장비</a></li>
			<li><a href="none">게임 정보</a></li>
			<li><a href="none">출석체크</a></li>
			<li><a href="none">게임 뉴스</a></li>
			<li><a href="none">COMUNITY</a></li>
			<li><a href="none">온라인 게임</a></li>
		</ul>	
</header>
</body>
</html>