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
<c:set var="world" value="라오스" />
<c:choose>
  <c:when test="${world == '유럽'}">
    <img src="/jsp02/images/europe1.jpg">
  </c:when>
    <c:when test="${world == '하노이'}">
    <img src="/jsp02/images/hanoi1.jpg">
  </c:when>
    <c:when test="${world == '라오스'}">
    <img src="/jsp02/images/raos1.jpg">
  </c:when>
    <c:when test="${world == '대만'}">
    <img src="/jsp02/images/taiwan1.jpg">
  </c:when>
  <c:otherwise>
    잘못된 입력입니다.
  </c:otherwise>
</c:choose>
</body>
</html>