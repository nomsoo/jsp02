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
<%-- <%
session.setAttribute("name", "김철수");
session.setAttribute("age", 20);
session.setAttribute("job", "dba");
%> --%>

<c:set var="name" value="김철수" scope="session"/>
<c:set var="age" value="20" scope="session"/>
<c:set var="job" value="dba" scope="session"/>



세션변수가 생성되었습니다.<br>
<a href="ex04_result.jsp">확인</a>

</body>
</html>