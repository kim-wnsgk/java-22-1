<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Insert title here</title>
	<link href="headerCss.css" rel="stylesheet" type="text/css">
</head>
<body>
<header>
	<div id="mySidenav" class="sidenav" >
	  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
	  <a href="#">프로필</a>
	  <a href="#">게임소식</a>
	  <a href="#">커뮤니티</a>
	  <a href="#">게임추천</a>
	</div>
	<div class="border_bottom">
		<span class="menu2" style="font-size:30px;cursor:pointer;" onclick="openNav()">&#9776;</span>
		<span>
			<a href="main.jsp" style="font-family: arial;color:black;font-size:30px;">DKU</a>
		</span>
		<div class='login1'style="float:right">
			<a href="login.jsp" style="width:100px; height:40px; line-height:40px; text-align:center; border:3px solid black; border-radius:40px; margin-right:10px; color:black">로그인</a>
			<a href="signUp.jsp" style="margin-right:10px; font-size:0.8em; font-weight:normal;">회원가입</a>
		</div>
	</div>
	<div id='banner'>
		<ul class='main-menu'>
			<li><a href="index.jsp"><img src="https://www.dankook.ac.kr/html_repositories/images/www/kor_content/est_ui_int01.jpg" alt="dankook-logo"/></a></li>
			<li><a href="#none">게임추천</a></li>
			<li><a href="#none">커뮤니티</a></li>
			<li><a href="#none">게임소식</a></li>
			<li><a href="#none">프로필</a></li>
		</ul>
		<ul class='slide-menu'>
			<li>
				<ul class='inner-ul'>
					<li><a href="#none">카테고리별</a></li>
					<li><a href="#none">사용자별 추천</a></li>
				</ul>
			</li>
			<li>
				<ul class='inner-ul'>
					<li><a href="#none">자유게시판</a></li>
					<li><a href="#none">공략&팁</a></li>
					<li><a href="#none">질문</a></li>
					<li><a href="#none">추천</a></li>
				</ul>
			</li><li>
				<ul class='inner-ul'>
					<li><a href="#none">게임뉴스</a></li>
					<li><a href="#none">패치정보</a></li>
				</ul>
			</li><li>
				<ul class='inner-ul'>
					<li><a href="#none">출석체크</a></li>
					<li><a href="#none">회원정보</a></li>
				</ul>
			</li>
		</ul>
	</div>
</header>
<script type="text/javascript" src="headerScript.js"></script>
</body>
</html>