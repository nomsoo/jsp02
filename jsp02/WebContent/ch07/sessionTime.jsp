<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>세션의 유효 시간</h2>
<%
//세션의 유효시간값을 알아보는 메서드
session.setMaxInactiveInterval(1200); //1200초(20분)으로 변경
int timeout=session.getMaxInactiveInterval();
out.println("세션의 유효시간:"+timeout); //초 단위
%>

</body>
</html>