<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get">
이름 : <input name="name" value="${param.name}"> <br>
이메일 : <input name="email" value="${param.email}"> 
<input type="submit" value="확인"> <br>
</form>

이름 : ${param.name} <br>
이메일 : ${param.email} <br>
</body>
</html>