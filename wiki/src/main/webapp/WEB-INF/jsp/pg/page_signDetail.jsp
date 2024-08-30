<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파이위키-게시판 목록</title>
<link rel="stylesheet" type="text/css" href="/css/style.css"/>


<script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

function fn_submit() {
	var f = document.frm;
	if(f.userid.value == "") {
		alert("ID를 입력해주세요 ^^");
		f.userid.focus();
		return;
	}
	if(f.pwd.value == "") {
		alert("비밀번호를 입력해주세요 ^^");
		f.pwd.focus();
		return;
	}
	f.submit();
}
function fn_action() {	
	var f = document.frm100;	
	if(f.title.value == "") {
		alert("제목을 입력해주세요.");
		return;
	}
	if(f.pwd.value == "") {
		alert("암호를 입력해주세요.");
		return;
	}
	f.submit();
}

function fn_delete() {	
	if( confirm("정말 삭제?")  ) {
		location.href="/apple/boardDelete.do?unq=${boardVO.unq}";
	}	
}	
</script>
</head>


<body style="font-family:'Tmon';" onload="MM_preloadImages('images/psg.jpg','images/pcg.jpg','images/ntg.jpg','images/mbg.jpg','images/ps2.jpg','images/pc2.jpg','images/ntd2.jpg','images/mb2.jpg')">
<div id="container">
	<div id="header">
<%@ include file="/top/topmenu.jsp" %> 	
	</div>
      <div id="logcnt">
		<div style="text-align:center;">
      
<form name="frm100" method="post" action="/apple/boardDetailSave.do">
<table width="940" height="120" border="0">
  <tr>
    <td width="230"><img src="images/ps1.jpg" name="btn01" width="230" height="40" id="btn01" onmouseover="MM_swapImage('imgBox','','images/psg.jpg',1);MM_swapImage('btn01','','images/ps2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="230"><img src="images/pc1.jpg" name="btn02" width="230" height="40" id="btn02" onmouseover="MM_swapImage('imgBox','','images/pcg.jpg',1);MM_swapImage('btn02','','images/pc2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="230"><img src="images/ntd1.jpg" name="btn03" width="230" height="40" id="btn03" onmouseover="MM_swapImage('imgBox','','images/ntg.jpg',1);MM_swapImage('btn03','','images/ntd2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="230"><img src="images/mb1.jpg" name="btn04" width="230" height="40" id="btn04" onmouseover="MM_swapImage('imgBox','','images/mbg.jpg',1);MM_swapImage('btn04','','images/mb2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
  </tr>
	<tr>
    <td colspan="4">
    </td>
    </tr>	
	</table>
	
	
	
	
	
	
	
	
<input type="hidden" name="unq" value="${boardVO.unq }"/>
<table border="1" width="600">
	<tr>
		<th>제목</th>
		<td><input type="text" name="title" value="${boardVO.title}"></td>
		</tr>
		<tr>
		<th>암호</th>
		<td><input type="password" name="pwd" value="${boardVO.pwd}"></td>
		</tr>
			<tr>
		<th>글쓴이</th>
		<td><input type="text" name="name" value="${boardVO.name}"></td>
		</tr>
			<tr>
		<th>내용</th>
		<td>
		<textarea name="content" rows="5" cols="70">${boardVO.content}</textarea>
		</td>
		</tr>
		<tr>
		<th colspan="2">
			<button type="button" onclick="fn_action()">저장</button>
			<button type="reset">취소</button>
			<button type="button" onclick="fn_delete()">삭제</button>
			
			
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