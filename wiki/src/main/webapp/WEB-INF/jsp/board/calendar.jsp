<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.Calendar"%>
	
<%
	Calendar cal = Calendar.getInstance();

	int y = 0;
	int m = 0;

	String y1 = request.getParameter("year"); // 출력 년도
	String m1 = request.getParameter("month"); // 출력 개월(출력시 +1 필요)


	if (y1 == null || m1 == null ) {
		y = cal.get(Calendar.YEAR);
		m = cal.get(Calendar.MONTH);
	} else {
		y = Integer.parseInt(y1);
		m = Integer.parseInt(m1)  -1;
	}

	cal.set(y, m, 1); // 출력 일의 1일날로 세팅 ( 1일날의 요일을 얻기 위해)

	int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK); // 1일날의 요일
	int lastDay = cal.getActualMaximum(Calendar.DATE); // 마지막 날짜
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<form name="frm" method="post" action="/apple/calendar.do">
	
		<select name="year">
		<% 
		for(int i=2018; i>=1950; i-- ) { 
		%>
			<option value="<%=1%>"><%=i %>년</option>
		<% 
		} 
		%>	
		
		</select>
		<select name="month">
		<% 
		for(int i=1; i<=12; i++ ) { 
		%>
			<option value="<%=1%>"><%=i %>월</option>
		<% 
		} 
		%>	
		
		</select>
		
		  <input type="submit" value="전송">

	</form>




	<%=y%>년
	<%=m + 1%>월
	<table border="1">
		<tr>
			<th><font color="red">일</font></th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
			<th><font color="blue">토</font></th>
		</tr>
		<tr>
			<%
				for (int i = 1; i < dayOfWeek; i++) {
			%>
			<td></td>
			<%
				}
				for (int d = 1; d <= lastDay; d++) {
					
					if(dayOfWeek%7 == 0) {
						out.print("<td><font color=blue>"+d+"</font></td>");
					} else if(dayOfWeek%7 == 1) {
						out.print("<td><font color=red>"+d+"</font></td>");
					}
					
					
			%>
			<td><%=d%></td>
			<%
				if (dayOfWeek % 7 == 0) {
			%>
		</tr>
		<tr>
			<%
				}
					dayOfWeek++;
				}
			%>
		
	</table>
</body>
</html>