<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="/script/jquery-1.12.4.js"></script>
<script src="/script/jquery-ui.js"></script>
<script>
$(function(){
	
	$("#btnLogout").click(function(){

	$.ajax({
		type: 'POST',
		data: '',
		url: "<c:url value='/logOut.do' />",
		dataType: "json",
		success: function (data) {
			if(data.result == "ok") {
				alert("로그아웃 처리 되었습니다.");
				location.href = "<c:url value='/daemun.do'/>";
			} 
		},
		error: function (error) {
			alert("error : " + error);
		}
	});
});
});

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		#pi_img {
  			 background-image: url("/images/pi.png");
   			position: relative;
  			 background-size: cover;
 			  left: 10%;
 			  top: 50px;
 			  height: 150px;
			   width: 150px;
				}
		.back{background-image:url("/images/back.jpg");
			background-repeat:no-repeat;
			}
.window {
	display: inline-block;
	margin-left: 500px;
	width: 366px; height: 34px;
	border: 3px solid #000000;
	background: white;
	vertical-align: top;
}
.input_text {
	width: 348px; height: 21px;
	margin: 6px 0 0 9px;
	border: 0;
	line-height: 21px;
	font-weight: bold;
	font-size: 16px;
	outline: none;
}
.sch_smit {
	width: 74px; height: 40px;
	display: inline-block;
	border: 0;
	background: #000000;
	color: white;
	font-weight: bold;
	border-radius: 1px;
	cursor: pointer;
}
.sch_smit1 {
	width: 74px; height: 40px;
	display: inline-block;
	margin-left:1000px;
	margin-top:80px;
	
	border: 0;
	background: #000000;
	color: white;
	font-weight: bold;
	border-radius: 1px;
	cursor: pointer;
}	
.window:hover{
	background: #58ACFA;
}
.sch_smit:hover {
	background: #58ACFA;
}
.sch_smit1:hover {
	background: #58ACFA;
}
.wd {
	display: inline-block;
	margin-left: 50px;
	width: 366px; height: 34px;
	border: 3px solid #000000;
	background: white;
	vertical-align: top;
}
.wd:hover{
	background: #58ACFA;
}
.wd2 {
	display: inline-block;
	margin-left: 24px;
	width: 366px; height: 34px;
	border: 3px solid #000000;
	background: white;
	vertical-align: top;
}
.wd2:hover{
	background: #58ACFA;
}
  
	</style>
	
</head>


<body class="back">
	<a href="/daemun.do"><div id="pi_img"></div></a>
		<div style="height:150px; width:100%;">
		
<span class='window'>
	<input type='text' class='input_text' />
</span>
<button type='submit' class='sch_smit'>검 색</button>
				<c:if test="${sessionScope.loginCertification.memId != null}">
				<a href="#" onClick="document.forDetailform.submit();"><button type="button" class='sch_smit1'>회원정보</button></a>
				<a href="#" onClick="fn_logout()"><button type="button" id="btnLogout" class='sch_smit'>로그아웃</button>
				<a href="/ms.do"><button type="button" class='sch_smit'>관리자</button></a>
				</c:if>
				<c:if test="${sessionScope.loginCertification.memId == null}">
				<a href="/sign.do"><button type="button" class='sch_smit1'>회원가입</button></a>
				<a href="/login.do"><button type="button" class='sch_smit'>로그인</button></a>
				<a href="/ms.do"><button type="button" class='sch_smit'>관리자</button></a>
				</c:if>
	</div>
</body>
</html>