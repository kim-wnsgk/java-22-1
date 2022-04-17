<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Header</title>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap');
	
	* {
	margin:0;
	}
	a{
	display:inline-block;
	text-decoration:none;
	color:#555555;
	}
	img {
	width:100%;
    height:100%;
    object-fit:cover;
	}
	header {
	overflow:hidden;
	font-family: 'Sunflower', sans-serif;
	font-size:1.3em;
	font-weight:bold;
	}
	#first-banner {
	height:70px;
	line-height:70px;
	border-bottom: 1px solid #cccccc;
	overflow:hidden;
	}
	#first-banner .menu-icon {
	width:50px;
	height:50px;
	display:inline-block;
	margin:auto;
	padding:10px;;
	}

	#first-banner .login {
	float:right;
	}


	#second-banner {
	height:100px;
	line-height:100px;
	}
	#second-banner ul{
	-webkit-padding-start:0px;
	list-style:none;
	overflow:hidden;
	}
	#second-banner ul li{
	width:300px;
	float:right;
	text-align:center;
	}
	#second-banner ul li:first-child{
	height:80px;
	float:left;
	border:1px solid black;
	display:block;
	}
	#second-banner ul li a{
	display:block;
	}
</style>
</head>
<body>
<header>
	<div id='first-banner'>
		<div class="menu-icon">
			<a href="menu.jsp"><img src="https://cdn.icon-icons.com/icons2/1674/PNG/512/menu_110986.png" alt="menu" title="menu"/></a>
		</div>
		
		<div class='login'>
			<a href="login.jsp" style="width:100px; height:40px; line-height:40px; text-align:center; border:3px solid black; border-radius:40px; margin-right:10px; color:black">로그인</a>
			<a href="register.jsp" style="margin-right:10px; font-size:0.8em; font-weight:normal;">회원가입</a>
		</div>
		
	</div>
	<div id='second-banner'>
		<ul>
			<li><a href="index.jsp"><img src="https://www.dankook.ac.kr/html_repositories/images/www/kor_content/est_ui_int01.jpg" alt="dankook-logo"/></a></li>
			<li><a href="#none">게임추천</a></li>
			<li><a href="#none">커뮤니티</a></li>
			<li><a href="#none">게임소식</a></li>
			<li><a href="#none">프로필</a></li>

		</ul>
	</div>
</header>
</body>
</html>