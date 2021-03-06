<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../mobile_project/test2.css" />
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
<link rel="stylesheet" 
href="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.css"/>
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script 
src="http://code.jquery.com/mobile/1.4.2/jquery.mobile-1.4.2.min.js">
</script>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	list();
	$("#btnSave").click(function(){
		insert();
	});
});

function insert(){
	var param="userid="+$("#userid").val()
	+"&passwd="+$("#passwd").val()
	+"&name="+$("#name").val()
	+"&email="+$("#email").val()
	+"&hp="+$("#hp").val();
	$.ajax({
		type: "post",
		url: "/jsp02/member_servlet/join_oracle_secret.do",
		data: param,
		success:function(){
			list();
			$("#userid").val("");
			$("#passwd").val("");
			$("#name").val("");
			$("#email").val("");
			$("#hp").val("");
		}
	});
}

function list(){
	//회원 목록을 div에 출력, 백그라운드로 실행
	$.ajax({
		type: "post",
		url: "/jsp02/mobile_servlet/list.do",
		success: function(result) {
			console.log(result);//F12 consol에서 응답text확인
			/* $("#memberList").text(result); */
			$("#mobileList").html(result); 
		}
	});
}

</script>
</head>
<body id="blog">
 <div data-role="page" data-theme="b">
  <div data-role="panel" id="right" data-position="right"> 
				<ul data-role="listview">
				<li><a href="mobile_main.html" data-icon="home">Home</a></li>
				<li><a href="about.html" data-icon="eye">about</a></li>
				<li><a href="mail.html" data-icon="phone">고객센터</a></li>
			 </ul>		
		</div>
 
	<div id="header" data-role="header">
		<h1 id="avatar" style="margin:0.8rem">My Travel Blog</h1>
		 <div data-role="navbar" data-iconpos="top">
		 	 <ul>
				<li><a href="mobile_main.html" data-icon="home">Home</a></li>
				<li><a href="about.html" data-icon="eye">about</a></li>
				<li><a href="mail.html" data-icon="phone">고객센터</a></li>
			 </ul>
			 <a class="ui-link ui-btn-right ui-icon-bars ui-corner-all" data-icon="bars" href="#right" >MENU</a>
		</div>
	</div>
	<div data-role="content">
	 	<h2>관리자페이지</h2>
아이디 : <input id="userid">
비번 : <input type="password" id="passwd"><br>
이름 : <input id="name">
이메일 : <input id="email"><br>
핸드폰 : <input id="hp">
<button type="button" id="btnSave">추가</button>
<center style="padding-top: 2rem"><a href="#mobilelist" data-rel="popup"
 class="ui-btn ui-btn-inline ui-corner-all" data-position-to="window">회원목록</a>
<div data-role="popup" id="mobilelist" class="ui-content">
 	<div id="mobileList"> </div>
</div>		 
	<div data-role="footer">
		<h4><p>&copy; 저작권 or 출저: <a href="http://google.com">Google</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p></h4>
	</div>
</div>
</body>
</html>