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

Cookie cookie = new Cookie("id","kim");
Cookie cookie2 = new Cookie("pwd","1234");
Cookie cookie3 = new Cookie("name","20");
Cookie cookie4 = new Cookie("email","kim@gmail.com");
Cookie cookie5 = new Cookie("hp","010-1234-5678");
Cookie cookie6 = new Cookie("add","서울강동구천호동");
cookie.setMaxAge(10); 

response.addCookie(cookie); 
response.addCookie(cookie2);
response.addCookie(cookie3);
response.addCookie(cookie4);
response.addCookie(cookie5);
response.addCookie(cookie6);
%>

쿠키가 생성되었습니다.<br>

<a href="useCookie2.jsp">쿠키 확인</a>

<%
String name = URLEncoder.encode("박상민","utf-8");
%>
<a href="useCookie2.jsp?name=<%=name%>">쿠키확인</a>

</body>
</html>