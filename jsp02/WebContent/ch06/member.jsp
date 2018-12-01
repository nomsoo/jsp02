<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){//페이지 로딩이 끝나면 자동으로 실행되는 코드
	list();
	$("#btnSave").click(function(){
		insert();
	});
});

function insert(){ //회원자료입력처리
	var param="userid="+$("#userid").val()
	+"&passwd="+$("#passwd").val()
	+"&name="+$("#name").val()
	+"&email="+$("#email").val()
	+"&hp="+$("#hp").val();
	$.ajax({
		type: "post",
		url: "/jsp02/member_servlet/join.do",
		data: param,
		success:function(){
			list();//회원목록 갱신
			//입력값 초기화
			$("#userid").val("");
			$("#passwd").val("");
			$("#name").val("");
			$("#email").val("");
			$("#hp").val("");
		}
	});
}

function list(){//회원테이블 출력처리
	//회원 목록을 div에 출력, 백그라운드로 실행
	$.ajax({
		type: "post",
		url: "/jsp02/member_servlet/list.do",
		success: function(result) {
			console.log(result);//F12 consol에서 응답text확인
			/* $("#memberList").text(result); */
			$("#memberList").html(result); 
		}
	});
}

</script>
</head>
<body>
<h2>회원관리</h2>
아이디 : <input id="userid">
비번 : <input type="password" id="passwd"><br>
이름 : <input id="name">
이메일 : <input id="email"><br>
핸드폰 : <input id="hp">
<button type="button" id="btnSave">추가</button>

<div id="memberList"> </div>
</body>
</html>