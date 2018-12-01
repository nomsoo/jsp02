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
/* $(function(){
	$("#btnJoin").click(function(){
		var param="userid="+$("#userid").val()
	  	+"&passwd="+$("#passwd").val()
	  	+"&name="+$("#name").val();
		+"&email="+$("#email").val();
		+"&hp="+$("#hp").val();
		
		$.ajax({
			type: "post",
			url: "/jsp02/mobile_servlet/oracle_join.do",
			data: param,
			success: function(){
				alert("추가되었습니다.");
			}
		});
	});
}) */

function check(){
	var userid = document.form1.userid.value;
	var passwd = document.form1.passwd.value;
	var name = document.form1.name.value;
	var email = document.form1.email.value;
	var hp = document.form1.hp.value;
	
	if(userid=="") {
		alert("아이디를 입력해주세요.");
		document.form1.userid.focus();
		return;
    }
	if(passwd == "") {
		alert("암호를 입력해주세요.");
		document.form1.passwd.focus();
		return;
    }
	if(name == "") {
		alert("이름을 입력해주세요.");
		document.form1.name.focus();
		return;
    }
	if(email == "") {
		alert("이메일을 입력해주세요.");
		document.form1.email.focus();
		return;
    }
	if(hp == "") {
		alert("전화번호를 입력해주세요");
		document.form1.hp.focus();
		return;
    }
	alert("회원가입이 완료되었습니다.");
	alert("로그인 페이지로 이동합니다.");
	document.form1.submit();
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
	 	<h2>회원가입 페이지</h2>
<form name="form1" method="post" action="/jsp02/mobile_servlet/oracle_join.do">
아이디 : <input name="userid">
비번 : <input type="password" name="passwd"><br>
이름 : <input name="name">
이메일 : <input name="email"><br>
핸드폰 : <input name="hp">
</form>	
<input type="button" value="회원가입" onclick="check()">		 
	<div data-role="footer">
		<h4><p>&copy; 저작권 or 출저: <a href="http://google.com">Google</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p></h4>
	</div>
</div>
</body>
</html>