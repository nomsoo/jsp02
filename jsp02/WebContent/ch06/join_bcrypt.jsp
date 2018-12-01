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
	$("#btnJoin").click(function(){
		// userid=kim&passwd=1234&name=김철수
	  	var param="userid="+$("#userid").val()
	  	+"&passwd="+$("#passwd").val()
	  	+"&name="+$("#name").val()
	  	+"&email="+$("#email").val()
	  	+"&hp="+$("#hp").val()
	  	+"&zipcode="+$("#zipcode").val()
	  	+"&address1="+$("#address1").val()
	  	+"&address2="+$("#address2").val();//끝에만 세미콜론처리(한문장)
		$.ajax({
			type: "post",
			url: "/jsp02/member_servlet/join_bcrypt.do",
			data: param,
			success: function(){
				alert("추가되었습니다.");
			}
		});
	});
})

</script>

</head>
<body>

<h2>회원가입과 로그인(BCryt방식)</h2>
아이디 : <input id="userid"><br>
비밀번호 : <input type="password" id="passwd"><br>
이름 : <input id="name"><br>
이메일 : <input id="email"><br>
hp : <input id="hp"><br>
우편번호 : <input id="zipcode"><br>
주소1 : <input id="address1"><br>
주소2 : <input id="address2"><br>
<button id="btnJoin">회원가입</button>

</body>
</html>