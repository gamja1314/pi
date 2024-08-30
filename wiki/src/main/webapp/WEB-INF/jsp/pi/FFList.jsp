<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FF 뉴스게시판</title>



<style>
#gesipan {
	width: 900px;
	margin: 0px auto;
	padding: 20px;
	border: 1px solid #bcbcbc;
}
</style>
</head>
<body>
	

<div id="gesipan">
[ Play Station - 소식게시판 ]
	<br>
	<div style="width: 600px; text-align: left;">
		<form name="srchForm" method="post" action="apple/FFList.do">
			<select name="srchCond">
				<option value="title">제목</option>
				<option value="content">내용</option>
				<option value="titleCont">제목+내용</option>
			</select> <input type="text" name="srchWord" style="width: 150px;"> <input
				type="submit" value="검색"> <br> <br>
		</form>
	</div>



	<table border="1">
		<tr align="center">
			<td width="50">번호</td>
			<td width="200">제목</td>
			<td width="100">닉네임</td>
			<td width="100">등록일</td>
			<td width="50">조회수</td>
		</tr>

		<c:forEach var="a" items="${resultList}" varStatus="status">
			<tr align="center">
				<td>${status.count}</td>
				<td align="left"><c:set var="len"
						value="${fn:length(a.thread)}" /> <c:forEach var="i" begin="1"
						end="${fn:length(a.thread)}">
			&nbsp;&nbsp; 
		 </c:forEach> 
		   <c:if test="${a.thread != 'a'}">
			  [답글]
		</c:if> <a href="/reFFDetail.do?unq=${a.unq}">${a.title}</a></td>
				<td>${a.name}</td>
				<td>${a.rdate}</td>
				<td>${a.hit}</td>
			</tr>
		</c:forEach>

	</table>
	 <div style="width: 500px; height: 40px; text-align: center">
		<!--  for(int i=1; i<=${lastPage}; i++)  -->
		<c:forEach var="i" begin="1" end="${lastPage}" step="1">
			<a href="/reFFList.do?pageNo=${i}">${i}</a>
		</c:forEach>
	</div>  

</div>

</body>
</html>

