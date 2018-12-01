<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<c:redirect url="/board_servlet/list.do"></c:redirect>

<!-- Java코드 -->
<%-- <%
response.sendRedirect(
		request.getContextPath()+"/board_servlet/list.do");
%> --%>

<!-- url mapping방식
1. web.xml 전통적방식(구버전)
2. @WebServlet("/board_servlet/*") (신버전)
 -->

</head>
<body>

</body>
</html>