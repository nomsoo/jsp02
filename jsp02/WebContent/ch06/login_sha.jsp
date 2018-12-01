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
	$("#btnLogin").click(function(){
		var param="userid="+$("#userid").val()
		+"&passwd="+$("#passwd").val();
		$.ajax({
			type: "post",
			url: "/jsp02/member_servlet/login_sha.do",
			data: param,
			success: function(result){
				$("#result").html(result);
			}
		});
	});
});
</script>

</head>
<body>
<h2>로그인 테스트(SHA256 방식)</h2>
아이디 : <input id="userid"><br>
비번 : <input type="password" id="passwd"><br>
<button id="btnLogin">로그인</button>
<div id="result"></div>
</body>
</html>