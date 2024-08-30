<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>login page</title>
		<link rel="stylesheet" type="text/css" href="/css/style.css" />
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="/script/jquery-1.12.4.js"></script>
		<script src="/script/jquery-ui.js"></script>
	</head>
	
	<body style="font-family:'Tmon';">
		<form name="loginForm" method="post" action="/login.do">
			<p>
				<div>
					<img src="../images/idpng.png" weight="100" height="27" alt="로그인">
					<input type="text" name="id">
				</div>
			</p>
			<p>
				<div>
					<img src="../images/pwdpng.png" weight="100" height="27" alt="비밀번호">
					<input type="password" name="pwd">
				</div>
			</p>
			<p>
				<div class="button">
					<button type="submit">로그인</button>
					<button onclick="location.href='sighUp.html'">회원가입</button>
				</div>
			</p>
		</form>
	</body>
</html>

