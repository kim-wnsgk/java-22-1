<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header_header.jsp" />
<jsp:include page="main_banner.jsp" />
<div style="margin-top:100px;text-align:center">
<form action="rec_mbti.jsp" method="get"><div style="font-size:60px">
본인의 MBTI를 입력 해 주세요 <br><input type="text" style="margin-left:30px;width:300px;height:40px;" name="myMbti"/><input style="cursor:pointer;margin-left:20px;height:45px;width:100px;border:none;color:white;background-color:#393e46;"type="submit"/></div></form>
<a style="margin:100px" href="https://www.16personalities.com/ko">mbti검사 하러가기(10~15분 소요)</a>
<a style="margin:100px" href="rec_mbtiTest.jsp">초간단 mbti 테스트(20초 소요)</a>
</div>
<div style="height:200px"></div>
<jsp:include page="header_footer.jsp" />

</body>


</html>