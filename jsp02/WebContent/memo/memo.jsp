<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	list();
	$("#btnSave").click(function(){
		insert();
	});
	//검색 버튼 클릭
	$("#btnSearch").click(function(){
		list();
	});
	
	
});
function insert(){
	var writer=$("#writer").val();
	var memo=$("#memo").val();
	var param="writer="+writer+"&memo="+memo;
	$.ajax({
		type: "post",
		url: "${path}/memo_servlet/insert.do",
		data: param,
		success: function(){ //call back
			list();
			$("#writer").val("");
			$("#memo").val("");
		}
	});
}
function list(){
	//검색옵션과 검색할 키워드를 전달
	var param="searchkey="+$("#searchkey").val()
	+"&search="+$("#search").val();
	$.ajax({
		type: "post",
		url: "${path}/memo_servlet/list.do",
		data: param,
		success: function(result){
			$("#result").html(result);
		}
	});
}
</script>
</head>

<body>
<h2>한줄메모장</h2>

이름 : <input id="writer" size="10"><br>
메모 : <input id="memo" size="40">
<input type="button" id="btnSave" value="확인">

<br>
<select id="searchkey">
  <option value="writer">이름</option>
  <option value="memo">메모</option>
  <option value="writer_memo">이름+메모</option>
</select>
<input id="search" value="${search}">
<input type="button" id="btnSearch" value="조회">

<div id="result"></div>

</body>
</html>