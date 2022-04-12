<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="dao.FoodDaoImpl"%>
<%@ page import="dto.FoodBean"%>
<%@ page import="java.util.*"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%

			FoodDaoImpl fdImpl = new FoodDaoImpl();
			
			List<FoodBean> fbList = new ArrayList<FoodBean>();
			fbList = fdImpl.selectList();
			
			String mode = request.getParameter("mode");
			
			String lastCol = mode.matches("edit")?"edit":mode.matches("delete")?"delete":"detail";  // ������ �࿡ ���� ���ڿ�
	%>
	<table border=1>
		<tr>
			<td>sample_id</td> <td>��ǰ��</td> <td>��ǰ�󼼺з�</td> <td>������(kcal)</td> <td>�뷮</td> <td>����(g)</td> <td>�ܹ���(g)</td> <td>����(g)</td> <td>ź��ȭ��(g)</td> <td>�Ѵ��(g)</td> <td>�� ���̼���(g)</td> <td>Į��(mg)</td> <td>ö(mg)</td> <td>���׳׽�(mg)</td> <td>��(mg</td> <td>Į��(mg)</td> <td>��Ʈ��(mg)</td> <td>�ƿ�(mg)</td> <td>����(mg)</td> <td>����(mg)</td> <td>������(ug)</td> <td><%=lastCol %></td>
		</tr>
	
	<%

		for (FoodBean foodBean : fbList) {
	%>
		<tr>	
			<td><%=foodBean.getSample_id() %></td>
			<td><%=foodBean.getName() %></td>
			<td><%=foodBean.getCategory() %></td>
			<td><%=foodBean.getCalorie() %></td>
			<td><%=foodBean.getServing_size() %></td>
			<td><%=foodBean.getWater() %></td>
			<td><%=foodBean.getProtein() %></td>
			<td><%=foodBean.getFat() %></td>
			<td><%=foodBean.getCarbohydrate() %></td>
			<td><%=foodBean.getSugars() %></td>
			<td><%=foodBean.getFiber() %></td>
			<td><%=foodBean.getCalcium() %></td>
			<td><%=foodBean.getIron() %></td>
			<td><%=foodBean.getMagnesium() %></td>
			<td><%=foodBean.getPhosphorus() %></td>
			<td><%=foodBean.getPotassium() %></td>
			<td><%=foodBean.getSodium() %></td>
			<td><%=foodBean.getZinc() %></td>
			<td><%=foodBean.getCopper() %></td>
			<td><%=foodBean.getManganese() %></td>
			<td><%=foodBean.getSelenium() %></td>
			<%if (mode.matches("edit")) {%>
				<td><a href="editForm.jsp?sample_id=<%=foodBean.getSample_id()%>">>></a></td>
			<%
			}
			else if (mode.matches("delete")) {%>
				<td><a href="deleteProcess.jsp?sample_id=<%=foodBean.getSample_id()%>">>></a></td>
			<%		
			}
			else { %>
				<td><a href="detailView.jsp?sample_id=<%=foodBean.getSample_id()%>" >>></a></td>
			<%		
			}%>
		</tr>
	<%	
	}
	%>
	</table>
	
</body>
</html>