<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.3.1.min.js"></script>
<script>
$(function(){
	list();
});

function list(){
	$.ajax({
		type: "post",
		url: "${path}/memo_servlet/list.do",
		seccess: function(result) {
			$("#result").html(result);
		}		
	});	
}

</script>
</head>
<body>
<h2>한줄 메모장</h2>
<div id="result"></div>
</body>
</html>