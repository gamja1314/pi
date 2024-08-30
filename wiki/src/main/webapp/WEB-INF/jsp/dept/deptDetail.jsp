<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	function fn_delete() {
		location.href = "/apple/deptDelete.do?deptno=${deptVO.deptno}";
	}

		
</script>

<body>

	<form name="frm" method="post" action="/apple/deptDetailSave.do">
		부서번호<input type="text" name="deptno" value="${deptVO.deptno}">
		<br> 부서이름<input type="text" name="dname" value="${deptVO.dname}">
		<br> 부서위치<input type="text" name="loc" value="${deptVO.loc}">
		<br> <input type="submit" value="save">
		<input type="button" value="delete" onclick="fn_delete()">
	</form>

</body>
</html>