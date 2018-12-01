<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Java 코드</h2>
<%@ page import="java.util.Enumeration" %>
<%-- <%
//getHeaderNames는 일반 for 문으로 못돌리기 때문에 Enumeration과
//while문으로 씀
Enumeration<String> headerNames=request.getHeaderNames();
while(headerNames.hasMoreElements()){//다음 요소가 있으면
	String key=(String)headerNames.nextElement();//값을 읽음
	String value=request.getHeader(key);//헤더값 조회
	out.println(key+":"+value+"<br>");
}
%> --%>

<h2>JSTL 코드</h2>
<!-- taglib prefix="접두사" uri="태그의 식별자"-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- 코어태그: forEach var="개별변수" items="집합"
${cookie} => 쿠키정보
${header} => 헤더정보 (reuest.getHeaderName()과 같음) 
--%>

<c:forEach var="h" items="${header}">
    ${h.key} => ${h.value}<br>
</c:forEach>

<hr>

<c:set var="browser" 
value="${header['user-agent']}" scope="page" />

<%-- <c:out value="${browser}" /> --%>
<!-- out.println(값)-->
${browser}

<hr>
<c:remove var="browser"/> <!-- java의 removeAttribute()대체  -->
<c:out value="${browser}" />

</body>
</html>