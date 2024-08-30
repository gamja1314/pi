<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/apple/css/style.css"/>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="/script/jquery-1.12.4.js"></script>
<script src="/script/jquery-ui.js"></script>
</head>

<script>
$( function() {
  $( "#sdate" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
  $( "#edate" ).datepicker({
      changeMonth: true,
      changeYear: true
    });
} );
</script>

<script>
$(function() {
	
	$("#saveBtn").click(function(){
					
	/* if($("[id='title']").val() == "") { */
		if($("#title").val() == "") {
			alert("설문 제목을 입력해주세요.");
			return false;
		}
		if($("[id='comm']").eq(0).val() == "") {
			alert("설문 항목을 입력해주세요.");
			return false;
		}
		//alert($("[id='comm']").eq(0).val());
		
		/* var form = new FormData(document.getElementById('frm')); */
		var formData = $("#frm").serialize();
		$.ajax({
			type: 'POST',
			data: formData,
			url: "/rschWriteSave.do",
			dataType: "json",
			
			success: function (data) {
				if(data.result == "ok") {
					alert("저장됬습니다.");
					location.href = "/rschList.do";
				} else {
					alert("저장에 실패");
				}
			},
			error: function (error) {
				alert("error : " + error);
			}
		});
	});
});
</script>


<body style="background-color:AliceBlue  ">
    <div id="jb-container">
      <div id="jb-header">
     	<%@ include file="/include/topmenu.jsp" %>
      </div>
      <div id="jb-content">

<form name="frm" id="frm">
<table border="0" width="600">
	<tr>
		<td align="right">
		<input type="button" value="목록" style="width:100px;"
					onClick="location.href='/rschList.do'">
		</td>
	</tr>
</table>
<table width="600" border="1" cellpadding="0" cellspacing="0" style="bordercolor:#D3E2EC; bordercolordark:#FFFFFF; BORDER-TOP:#C2D0DB 2px solid; BORDER-LEFT:#ffffff 1px solid; BORDER-RIGHT:#ffffff 1px solid; BORDER-BOTTOM:#C2D0DB 1px solid; border-collapse: collapse;">
	<tr>
		<th width="20%">설문<br>제목</th>
		<td height="40">
<textarea name="title" id="title" style="width:99%;height:30px;"></textarea>
		</td>
	</tr>
	<tr>
		<th>항목</th>
		<td>
			<ol>
				<li><input type="text" name="comm" id="comm"/></li>
				<li><input type="text" name="comm" id="comm"/></li>
				<li><input type="text" name="comm" id="comm"/></li>
				<li><input type="text" name="comm" id="comm"/></li>
				<li><input type="text" name="comm" id="comm"/></li>
				<li><input type="text" name="comm" id="comm"/></li>
				<li><input type="text" name="comm" id="comm"/></li>
				<li><input type="text" name="comm" id="comm"/></li>
				<li><input type="text" name="comm" id="comm"/></li>
				<li><input type="text" name="comm" id="comm"/></li>
			</ol>
		</td>
	</tr>
	<tr>
		<th>기간</th>
		<td align="left"> &nbsp;
			<input type="text" name="sdate" id="sdate" style="width:100px;"> ~ 
			<input type="text" name="edate" id="edate" style="width:100px;">
		</td>
	</tr>
	<tr>
		<th>사용여부</th>
		<td align="left"> &nbsp;
			<select name="use" id="use">
				<option value="Y">사용</option>
				<option value="N">미사용</option>
			</select>
		</td>
	</tr>
	<tr>
		<th><input type="button" value="저장" id="saveBtn" style="width:100px;"/></th>
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