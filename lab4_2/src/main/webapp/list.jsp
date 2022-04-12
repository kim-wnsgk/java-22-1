<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dao.GradeDaoImpl"%>
<%@ page import="dto.GradeBean"%>
<%@ page import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	GradeDaoImpl fdImpl = new GradeDaoImpl();
	int ret = fdImpl.construct();
			
	List<GradeBean> fbList = new ArrayList<GradeBean>();
	fbList = fdImpl.selectList();
			
	String mode = request.getParameter("mode");
			
	String lastCol = mode.matches("edit")?"edit":mode.matches("delete")?"delete":"detail";  // 마지막 행에 쓰일 문자열
	
	Double average = 0.0;
	Double sum = 0.0;
	
	for (GradeBean gradeBean : fbList) {
		sum += gradeBean.getGrade();
	}
	average = sum / fbList.size();  // 학점의 평균값 계산
	%>
	<table border=1>
		<tr>
			<td>학번</td> <td>이름</td> <td>학과</td> <td>학점</td> <td>나이</td> <td><%=lastCol%></td>
		</tr>
	
	<%
		for (GradeBean gradeBean : fbList) {
		%>
			<tr>	
				<td><%=gradeBean.getId() %></td>
				<td><%=gradeBean.getName() %></td>
				<td><%=gradeBean.getMajor() %></td>
				<td><%=gradeBean.getGrade() %></td>
				<td><%=gradeBean.getAge() %></td>
				
				<%if (mode.matches("edit")) {%>
					<td><a href="editForm.jsp?id=<%=gradeBean.getId()%>">>></a></td>
				<%
				}
				else if (mode.matches("delete")) {%>
					<td><a href="deleteProcess.jsp?id=<%=gradeBean.getId()%>">>></a></td>
				<%		
				}
				else { %>
					<td><a href="detailView.jsp?id=<%=gradeBean.getId()%>" >>></a></td>
				<%		
				}%>
			</tr>
	<%	
	}
	%>
	</table>
	<p>학점의 평균은 : <%=average %> 입니다.</p>
	
</body>
</html>