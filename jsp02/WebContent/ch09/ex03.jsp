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
<!-- value="숫자처리" -->
<c:set var="num" value="<%=new Integer(100) %>" scope="page" />
<!-- value="문자" -->
<c:set var="num" value="200" scope="request" />
<c:set var="num" value="300" scope="session" />
<c:set var="num" value="400" scope="application" />

${num}<br>
${pageScope.num}<br>
${requestScope.num}<br>
${sessionScope.num}<br>
${applicationScope.num}<br>

<c:if test="${num > 10}">
  ${num} > 10
</c:if>

</body>
</html>