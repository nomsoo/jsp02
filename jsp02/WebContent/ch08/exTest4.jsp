<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../include/header.jsp" %>
<%@ page import="member.MemberDTO" %>
<%
MemberDTO dto = new MemberDTO();
dto.setUserid("hong");
dto.setPasswd("hong1234");
dto.setName("홍길동");
dto.setEmail("hong@gmail.com");
dto.setHp("010-1213-5678");
%>
<c:set var="dto" value="<%=dto %>" scope="request" />
<jsp:forward page="exTest4_result.jsp"></jsp:forward>
</body>
</html>