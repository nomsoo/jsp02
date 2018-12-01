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
//쿠키값에 id에 대해 빈값 처리해서 id만 삭제
Cookie cookie=new Cookie("id",""); 
cookie.setMaxAge(0);//즉시 삭제됨
response.addCookie(cookie);//따로 삭제함수는 없어서 addCookie()를 씀
%>
쿠키가 삭제되었습니다.
<a href="useCookie.jsp">쿠키 확인</a><br>

<!-- 쿠키가 삭제되었더라도 값을 다시 현지 페이지에서 설정하여
넘기면 값이 넘어감 -->
<!-- <a href="useCookie.jsp?name=kim">쿠키 확인</a> -->

</body>
</html>