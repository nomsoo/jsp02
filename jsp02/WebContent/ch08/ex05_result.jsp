<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%@ page import="java.util.ArrayList" %>
<%
ArrayList<String> items
=(ArrayList<String>)request.getAttribute("items");
for(String str : items){
	out.println(str+"<br>");
}
%> --%>

<%@ include file="../include/header.jsp" %>
<c:forEach var="fruit" items="${requestScope.items}">
   ${fruit}<br>
</c:forEach>



</body>
</html>