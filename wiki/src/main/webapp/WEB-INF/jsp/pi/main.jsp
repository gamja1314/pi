<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pi위키</title>


<style>
body {
	background-color: #E6E6E6;
	/* background-size: cover; */
	background-repeat: no-repeat;
	background-image: url("images/Pi/playst.png");
	background-position: center top;
	top: 35%;
	/* opacity: 0.5 !important;
	filter: alpha(opacity = 50);
	z-index: -1; */
}

/* body background {
	background-repeat: no-repeat;
	background-image: url("images/Pi/playst.png");
	
	background-position: center bottom;
	opacity: 0.5 !important;
	filter: alpha(opacity = 50);
	z-index: -1;
} */
.back_page {
	margin: 25px 50px 75px 100px;
}

.block {
	position: static;
	overflow: hidden;
	white-space: nowrap;
	margin: 0 auto;
}

.container { /*  /*의미없이 묶어주려고 만들었음*/ */
	position: relative;
}

#pi_img {
	background-image: url("images/Pi/Pi_main.png");
	position: relative;
	background-size: cover;
	left: 10%;
	top: 50px;
	height: 150px;
	width: 150px;
}

#main_text {
	position: absolute;
	top: 19%;
	left: 11%;
	width: 270px;
	height: 80px;
}

/*이아래는 왼쪽상단 메뉴를 위한것들*/

#underline_menu ul {
	/* margin-left: auto; */
	/* margin-right: auto; */
	left: -30%;
	display: table;
	height: 35px;
	width: 100%;
	text-align: center;
	background-color: #585858;
	margin-top: 20px;
	/* padding: 30px; */
}

#underline_menu ul li {
	display: inline-block;
	color: #fff;
	background-color: #585858;
	vertical-align: middle;
	text-align: center;
	padding-bottom: 8px;
	width: 150px;
	vertical-align: middle;
}

#underline_menu .meunLink {
	color: #fff;
	display: inline;
	width: 150px;
	text-decoration: none;
	font-size: 26px;
}

#underline_menu ul li a:hover {
	color: #CEECF5;
}

#searchBox { /*검색 상자 텍스트중앙정렬 left 임의로 퍼센테이지 수정해주세요ㅠㅠ*/
	position: relative;
	left: 35%;
	top: 10%;
	width: 400px;
	padding-bottom: 10px;

	/*컴퓨터에 따라 퍼센테이지가 달라욤*/
}

input:-ms-input-placeholder {
	color: #04B4AE;
}

input::-webkit-input-placeholder {
	color: #04B4AE;
}

input::-moz-placeholder {
	color: #04B4AE;
} /*색지정*/
#search_input {
	font-size: 15px;
	border: 0px;
	height: 4px;
	outline: none;
	float: center;
	width: 320px;
	padding: 10px;
	border: 1px solid #58FAF4;
}

#diary_login { /*로그인단추*/
	position: absolute;
	background-image: url("images/Pi/login.png");
	background-size: 100px 60px;
	background-repeat: no-repeat;
	top: 10%; /*윗쪽간격입니다*/
	right: 50px; /*컴퓨터마다 다르니까 오른쪽 수정해주세욥*/
	width: 100px;
	height: 200px;
	margin: 10px;
}

#iframe_loc {
	position: absolute;
	top: 40%;
	right: 10%;
	width: 900px;
	height: 420px;
	border: 1px;
	border-style: ridge;
	border-color: black;
}
</style>



</head>
<body>

	<div class="first_page ">

		<a href="">
			<div id="pi_img"></div>
		</a> <a href=""><div id="diary_login"></div></a>


		<div id="searchBox">
			<!--글쓰기 박스-->
			<table summary="검색창">
				<input id="search_input" type="text" placeholder="검색">
				<button>검색</button>
			</table>

		</div>

	</div>


	<div class="container">
	<br>
	<br>
			<div id="underline_menu" style="">

				<ul>

					<li><a class="meunLink" href="">&nbsp; PS &nbsp;</a></li>

					<li><a class="meunLink" href="">&nbsp; 닌텐도 &nbsp;</a></li>
					<li><a class="meunLink" href=""> &nbsp; PC &nbsp; </a></li>
					<li><a class="meunLink" href=""> &nbsp; 모바일 &nbsp; </a></li>

				</ul>
			</div>
		
	</div>





<!-- 	<iframe id="iframe_loc" name="게시판" src="#"> </iframe> -->



</body>
</html>