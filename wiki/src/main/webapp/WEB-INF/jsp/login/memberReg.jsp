<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="/script/jquery-1.12.4.js"></script>
<script src="/script/jquery-ui.js"></script>
</head>
<body>
	<form name="memberForm" method="post" action="/memberRegSave.do">
		            <table>
                <tr>
                    <td>아이디</td>
                    <td><input type="text" name="usrId" id="usrId"></td>
                </tr>
                <tr>
                    <td>비밀번호</td>
                    <td><input type="password" name="usrPwd" id="usrPwd"></td>
                </tr>

                <tr>
                    <td>이메일</td>
                    <td><input type="text" name="email" id="email"></td>
                </tr>
                <tr>
                    <td>닉네임</td>
                    <td><input type="text" name="usrName" id="usrName"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                    <button type="submit">완료</button>
                    <button type="reset">새로작성</button></td>
                </tr>
            </table>
	</form>
</body>
</html>