<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>register</title>
<style>
	form{
	margin:20px auto;
	width:500px;
	height:500px;
	line-height:100px;
	background:#cccccc;
	font-size:2em;
	}
	input{
	width:200px;
	height:50px;
	
	}
</style>
</head>
<body>
<jsp:include page="header.jsp"/>
<form name="register" action="lab3.jsp" method="post">
	<input type="text" name="name" placeholder="insert your name"/><br>
	<input type="text" name="id" placeholder="insert your id"/>
	<input type="password" name="pw" placeholder="insert your password"/><br>
	<select name="phone1" size=1>
    	<option value="010">010</option>
    	<option value="011">011</option>
    	<option value="016">016</option>
    	<option value="017">017</option>
    	<option value="019">019</option>
    </select>
        - <input type="text" maxlength="4" name="phone2" style="height:20px; width:100px;">
        - <input type="text" maxlength="4" name="phone3" style="height:20px; width:100px;"><br>
    <input type="submit" value="register"/>
</form>
</body>
</html>