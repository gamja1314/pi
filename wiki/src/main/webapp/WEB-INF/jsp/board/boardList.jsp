<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/apple/css/style.css"/>
</head>


<body style="background-color:beige  ">
    <div id="jb-container">
      <div id="jb-header">
     	<%@ include file="/include/topmenu.jsp" %>
  
      </div>
 
 
      <div id="jb-content">
     
<div style="width:600px;text-align:left;">
<form name="srchForm" method="post" action="/apple/boardList.do">
<select name="srchCond">
	<option value="title">제목</option>
	<option value="content">내용</option>
	<option value="titleCont">제목+내용</option>
</select>
<input type="text" name="srchWord" style="width:150px;">
<input type="submit" value="검색">
</form>
</div>     
      
      
<table border="1">
	<tr align="center">
		<td width="50">번호</td>
		<td width="200">제목</td>
		<td width="100">글쓴이</td>
		<td width="100">등록일</td>
		<td width="50">조회수</td>
	</tr>
<c:forEach var="a" items="${resultList}" varStatus="status">
	<tr align="center">
		<td>${status.count}</td>
		<td align="left"><a href="/apple/boardDetail.do?unq=${a.unq}">${a.title}</a></td>
		<td>${a.name}</td>
		<td>${a.rdate}</td>
		<td>${a.hit}</td>
	</tr>
</c:forEach>
</table>

      </div>
 <div id="jb-sidebar">
        <h2>Sidebar</h2>
        <ul>
          <li>Lorem</li>
          <li>Ipsum</li>
          <li>Dolor</li>
        </ul>
      </div>
      <div id="jb-footer">
        <p>Copyright</p>
      </div>
    </div>
</body>
</html>