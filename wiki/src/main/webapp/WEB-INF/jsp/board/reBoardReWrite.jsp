<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
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




<script>

$(function() {
	$("#btnSubmit").click(function(){
		if($("#title").val() == "") {
			alert("제목을 입력해주세요.");
			$("#title").focus();
			return;
		}
		if($("#pwd").val() == "") {
			alert("암호를 입력해주세요.");
			$("#pwd").focus();
			return;
		}
		
		if(confirm("저장하시겠습니까?")) {
			var formData = $("#frm").serialize();
			$.ajax({
				type: "POST",
				data: formData,
				url: "/reBoardReWriteSave.do",
				dataType: "json",
				success: function(data) {
					if(data.result == "ok") {
						alert("저장하였습니다.");
						location.href = "/reBoardList.do";
					} else {
						alert("저장 실패했습니다. 다시 시도해 주세요.");
					}
				},
				error: function (){
					alert("오류발생");
				}
			});
		}
	});
});

	
</script>


<body style="background-color:AliceBlue  ">
    <div id="jb-container">
      <div id="jb-header">
     	<%@ include file="/include/topmenu.jsp" %>
      </div>
      <div id="jb-content">
      
 [답변게시판]     
      
<form  name="frm" id="frm">

<input type="hidden" name="unq" id="unq" value="${unq}">


<table border="1" width="600">
	<tr>
		<th>제목</th>
		<td>re : <input type="text" name="title" id="title"></td>
	</tr>
	<tr>
		<th>암호</th>
		<td><input type="password" name="pwd" id="pwd"></td>
	</tr>
	<tr>
		<th>글쓴이</th>
		<td><input type="text" name="name" id="name"></td>
	</tr>
	<tr>
		<th>내용</th>
		<td>
		<textarea name="content" id="content" rows="5" cols="70"></textarea>
		</td>
	</tr>
	<tr>
		<th colspan="2">
			<button type="button" id="btnSubmit">저장</button>
			<button type="reset">취소</button>
					<!-- <input type="button" value="저장" onclick="fn_action()">
					<input type="reset" value="취소"> -->
		</th>
	</tr>   
	
	
	</table>


</form>
        <h2></h2>

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