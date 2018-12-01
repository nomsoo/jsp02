<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.net.URLEncoder" %>
<% 
//new Cookie("쿠키변수명","값"), 주의) String type만 가능
Cookie cookie = new Cookie("id","김철수");
//웹서버 하위버전에서는 특수문자,한글을 쓰면 에러가 나기 때문에 인코딩해줌.
//Cookie cookie = new Cookie("id", URLEncoder.encode("김철수","utf-8"));
Cookie cookie2 = new Cookie("pwd","1234");
Cookie cookie3 = new Cookie("age","20");
Cookie cookie4 = new Cookie("addr",URLEncoder.encode("서울 강동구","utf-8"));
cookie.setMaxAge(10); //쿠키의 유시간(10초), 10초후 삭제됨

response.addCookie(cookie); //쿠키 생성
response.addCookie(cookie2);
response.addCookie(cookie3);
response.addCookie(cookie4);
%>

쿠키가 생성되었습니다.<br>

<a href="useCookie.jsp">쿠키 확인</a>

<%-- <%
String name = URLEncoder.encode("박상민","utf-8");
%>
<a href="useCookie.jsp?name=<%=name%>">쿠키확인</a> --%>

</body>
</html>