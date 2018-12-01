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
function check(){
	document.form1.action="${path}/guestbook_servlet/insert.do";
	document.form1.submit();
}

</script>

</head>
<body>
<h2>방명록 작성</h2>
<form name="form1" id="form1" method="post">
<table border="1" width="500px">
  <tr>
    <td>이름</td>
    <td><input name="name" id="name" size="40"></td>
  </tr>
  <tr>
    <td>이메일</td>
    <td><input name="email" id="email" size="40"></td>
  </tr>
  <tr>
    <td>비밀번호</td>
    <td><input type="password" name="passwd" id="passwd"
     size="40"></td>
  </tr>
  <tr align="center">
    <td colspan="2"><textarea rows="5" cols="55" 
    name="content" id="content"></textarea></td>
  </tr>
  <tr align="center">
    <td colspan="2">
      <input type="button" value="확인" onclick="check()">
      <input type="reset" value="취소"></td>
  </tr>
</table>
</form>
</body>
</html>