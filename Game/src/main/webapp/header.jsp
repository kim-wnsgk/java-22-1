<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
	width:1200px;
	overflow:hidden;
	font-family: 'Sunflower', sans-serif;
	font-size:1.3em;
	font-weight:bold;
	margin:0 auto;
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
	line-height:100px;
	}
	#second-banner ul {
	-webkit-padding-start:0px;
	list-style:none;
	overflow:hidden;
	}
	#second-banner ul>li{
	width:200px;
	float:right;
	text-align:center;
	}
	#second-banner .main-menu li:first-child{
	height:80px;
	float:left;
	display:block;
	}
	#second-banner .main-menu li a{
	display:block;
	}
	#second-banner .slide-menu {
	display:none;  /*마우스 오버 시 보이게*/
	font-size:0.7em;
	line-height:30px;
	position:absolute;
	background:white;
	border-radius:0 0 10px 10px;
	z-index:1;
	opacity:0.5;
	width:1200px;
	}
</style>
</head>
<body>
<header>
	<div id='first-banner'>
		<div class="menu-icon">
			<a href="menu.jsp"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hamburger_icon.svg/220px-Hamburger_icon.svg.png" alt="menu" title="menu"/></a>
		</div>
		
		<div class='login'>
			<a href="login.jsp" style="width:100px; height:40px; line-height:40px; text-align:center; border:3px solid black; border-radius:40px; margin-right:10px; color:black">로그인</a>
			<a href="register.jsp" style="margin-right:10px; font-size:0.8em; font-weight:normal;">회원가입</a>
		</div>
		
	</div>
	<div id='second-banner'>
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