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
	  <a href="#">������</a>
	  <a href="#">���Ӽҽ�</a>
	  <a href="#">Ŀ�´�Ƽ</a>
	  <a href="#">������õ</a>
	</div>
	<div class="border_bottom">
		<span class="menu2" style="font-size:30px;cursor:pointer;" onclick="openNav()">&#9776;</span>
		<span>
			<a href="main.jsp" style="font-family: arial;color:black;font-size:30px;">DKU</a>
		</span>
		<div class='login1'style="float:right">
			<a href="login.jsp" style="width:100px; height:40px; line-height:40px; text-align:center; border:3px solid black; border-radius:40px; margin-right:10px; color:black">�α���</a>
			<a href="signUp.jsp" style="margin-right:10px; font-size:0.8em; font-weight:normal;">ȸ������</a>
		</div>
	</div>
	<div id='banner'>
		<ul class='main-menu'>
			<li><a href="index.jsp"><img src="https://www.dankook.ac.kr/html_repositories/images/www/kor_content/est_ui_int01.jpg" alt="dankook-logo"/></a></li>
			<li><a href="#none">������õ</a></li>
			<li><a href="#none">Ŀ�´�Ƽ</a></li>
			<li><a href="#none">���Ӽҽ�</a></li>
			<li><a href="#none">������</a></li>
		</ul>
		<ul class='slide-menu'>
			<li>
				<ul class='inner-ul'>
					<li><a href="#none">ī�װ���</a></li>
					<li><a href="#none">����ں� ��õ</a></li>
				</ul>
			</li>
			<li>
				<ul class='inner-ul'>
					<li><a href="#none">�����Խ���</a></li>
					<li><a href="#none">����&��</a></li>
					<li><a href="#none">����</a></li>
					<li><a href="#none">��õ</a></li>
				</ul>
			</li><li>
				<ul class='inner-ul'>
					<li><a href="#none">���Ӵ���</a></li>
					<li><a href="#none">��ġ����</a></li>
				</ul>
			</li><li>
				<ul class='inner-ul'>
					<li><a href="#none">�⼮üũ</a></li>
					<li><a href="#none">ȸ������</a></li>
				</ul>
			</li>
		</ul>
	</div>
</header>
<script type="text/javascript" src="headerScript.js"></script>
</body>
</html>