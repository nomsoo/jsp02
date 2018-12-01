<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//쿠키 수정(value만 수정), 삭제함수는 없음
response.addCookie(new Cookie("id","park"));
%>
아이디 : ${cookie.id.value }<br>
쿠키가 변경되었습니다.<br>
<a href="useCookie.jsp">쿠키 확인</a>


</body>
</html>