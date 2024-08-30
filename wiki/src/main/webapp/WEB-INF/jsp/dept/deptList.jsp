<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<tr>
		<td width="50">번호</td>
		<td width="200">부서이름</td>
		<td width="100">부서위치</td>
	</tr>
<c:forEach var="a" items="${result}" varStatus="status">
	<tr>
		<td>${status.count}</td>
		<td><a href="/apple/deptDetail.do?deptno=${a.deptno}">${a.dname}</a></td>
		<td>${a.loc}</td>
	</tr>
</c:forEach>
</table>

</body>
</html>