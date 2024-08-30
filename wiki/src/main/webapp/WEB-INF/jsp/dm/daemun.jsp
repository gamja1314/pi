<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파이위키-대문</title>
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
</script>
</head>

<body style="font-family:'Tmon';" onload="MM_preloadImages('images/psg.jpg','images/pcg.jpg','images/ntg.jpg','images/mbg.jpg','images/ps2.jpg','images/pc2.jpg','images/ntd2.jpg','images/mb2.jpg')";>
<div id="container">
	<div id="header">
<%@ include file="/top/topmenu.jsp" %> 	
	</div>
	
 	
 	
 	<div id="content">
	<div style="text-align:center;">
	<form name="dmun" method="post" action="/pi/daemun.do">
	<table width="940" height="120" border="0">
  <tr>
    <td width="230"><img src="images/ps1.jpg" name="btn01" width="230" height="40" id="btn01" onmouseover="MM_swapImage('imgBox','','images/psg.jpg',1);MM_swapImage('btn01','','images/ps2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="230"><img src="images/pc1.jpg" name="btn02" width="230" height="40" id="btn02" onmouseover="MM_swapImage('imgBox','','images/pcg.jpg',1);MM_swapImage('btn02','','images/pc2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="230"><img src="images/ntd1.jpg" name="btn03" width="230" height="40" id="btn03" onmouseover="MM_swapImage('imgBox','','images/ntg.jpg',1);MM_swapImage('btn03','','images/ntd2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
    <td width="230"><img src="images/mb1.jpg" name="btn04" width="230" height="40" id="btn04" onmouseover="MM_swapImage('imgBox','','images/mbg.jpg',1);MM_swapImage('btn04','','images/mb2.jpg',1)" onmouseout="MM_swapImgRestore()" /></td>
  </tr>
  <tr>
    <td colspan="4"><img src="images/genji.jpg" name="imgBox" width="920" height="506" id="imgBox"/></td>
  </tr>
</table>
		</form>
	</div>
	</div>
	<div id="sidebar">
		<h2>1. PS</h2>
        <ul>
          <a href="/comunity.do"><li>호라이즌 제로 던</li></a>
          <li>니어 오토마타</li>
          <li>디트로이트 비컴 휴먼</li>
        </ul>
        <ul></ul>
        <h2>2. Nintendo</h2>
        <ul>
          <li>마리오 카트</li>
          <li>젤다의 전설</li>
          <li>레츠고 피카츄</li>
        </ul>
        <ul></ul>
         <h2>3. PC</h2>
        <ul>
          <li>오버워치</li>
          <li>리그 오브 레전드</li>
          <li>로스트 아크</li>
        </ul>
        <ul></ul>
         <h2>4. Mobile</h2>
        <ul>
          <li>리니지M</li>
          <li>모두의 마블</li>
          <li>포켓몬 GO</li>
        </ul>
        <ul></ul>
	</div>
	<div id="footer">
        <p>Copyright</p>
	</div>
</div>
  </body>
</html>



