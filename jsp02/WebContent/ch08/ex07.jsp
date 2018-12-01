<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%@ page import="member.MemberDTO" %>
<%
MemberDTO dto=new MemberDTO();
dto.setUserid("kim");
dto.setName("김철수");
dto.setPasswd("1234");
request.setAttribute("dto", dto);
%> --%>

<%@ include file="../include/header.jsp" %>
<%@ page import="member.MemberDTO" %>
<%
MemberDTO dto=new MemberDTO();
dto.setUserid("kim");
dto.setName("김철수");
dto.setPasswd("1234");
%>
<c:set var="dto" value="<%=dto%>" scope="request"/>


<!-- 포워딩(주소는 그대로, 화면은 넘어감) -->
<jsp:forward page="ex07_result.jsp"></jsp:forward>
</body>
</html>