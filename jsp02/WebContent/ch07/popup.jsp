<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	$("#nopopup").click(function(){
		var now=new Date();
		var val="";
		if(this.checked==true){//체크 상태이면
			val="N";
		}else{
			val="Y";
		}
		setCookie("showCookies", val, 7);
	});
});
function setCookie(cname, cvalue, days){
	var d=new Date();
	d.setDate(d.getDate()+days); //쿠키 만료일자 설정(현재날짜+7일)
	var expires="expires="+d.toGMTString();//표준시
	document.cookie=cname+"="+cvalue+";"+expires;//쿠키저장
	window.close(); //팝업창 닫기
}

</script>
</head>
<body>
<input type="checkbox" id="nopopup">
7일간 보이지 않기
</body>
</html>