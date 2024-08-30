<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
String id = (String)session.getAttribute("SeesionMemberId");
%>

<body >
	<div style="width: 100%; text-align: center;">
		<table border="1" align="center">
			<tr align="center">
				<td width="30">홈</td>
				<td width="70"><a href="/apple/board/boardList.jsp">공지사항</a></td>
				<td width="70"><a href="/apple/board/reBoardList.jsp">답변게시판</a></td>
				<%
				if(id == null){
				%>
				<td width="70"><a href="/apple/member/memberReg.jsp">회원가입</a></td>
				<td width="70"><a href="/apple/member/login.jsp">로그인</a></td>
				<%
				} else {
					%>  
					<td width="70"><a href="/apple/member/memberDetail.jsp">회원정보</a></td>
				<td width="70"><a href="/apple/member/logout.jsp">로그아웃</a></td>
				<%
				}
				%>
		
			</tr>

		</table>
	</div>
</body>
</html>