<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 반복문의 2가지 스타일
1)횟수가 정해진 경우
var="변수" begin="시작" end="끝"
2)횟수가 정해지지 않은 경우
var="변수" items="집합"
 -->

<c:forEach var="i" begin="${param.start}" end="${param.end}">
<%-- <c:forEach var="i" begin="2" end="9"> --%>
   <h2>${i}단</h2>
   <c:forEach var="j" begin="1" end="9">
      ${i} x ${j} = ${i*j}<br> 
   </c:forEach>
</c:forEach>
</body>
</html>