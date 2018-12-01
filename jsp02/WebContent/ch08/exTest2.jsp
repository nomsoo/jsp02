<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
</head>
<body>
<c:set var="name" value="홍길동" scope="session" />
<c:set var="age" value="33" scope="session" />
<c:set var="job" value="프로그래머" scope="session" />
<c:set var="email" value="hong@gmail.com" scope="session" />
<c:set var="hp" value="010-1234-5678" scope="session" />
<c:set var="addr" value="서울 강동구" scope="session" />

세션변수가 생성되었습니다.<br>
<a href="exTest2_result.jsp">확인</a>
</body>
</html>