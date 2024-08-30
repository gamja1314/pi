<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<script>
	function fn_action() {

		var f = document.frm100;

		if (f.title.value == "") {
			alert("제목을 입력해주세요.");
			return;
		}
		if (f.pwd.value == "") {
			alert("암호를 입력해주세요.");
			return;
		}
		f.submit();

	}
</script>


<body>
	<div id="gesipan">
		<form name="frm100" method="post" action="/apple/FFWriteSave.do">
			<table border="1" width="600">
				<tr>
					<th>제목</th>


					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<th>암호</th>
					<td><input type="password" name="pwd"></td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" rows="5" cols="70"></textarea></td>
				</tr>
				<tr>
					<th colspan="2">
						<button type="button" onclick="fn_action()">저장</button>
						<button type="reset">취소</button> <!-- <input type="button" value="저장" onclick="fn_action()">
					<input type="reset" value="취소"> -->
					</th>
				</tr>


			</table>


		</form>
		<h2></h2>


	</div>
</body>
</html>