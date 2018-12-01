<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//컨택스트 패스(웹프로젝트의 식별자)
String context=request.getContextPath();
//컨트롤러로 이동, post로 명시안하면 get방식임
response.sendRedirect(context+"/guestbook_servlet/list.do");
%>


</body>
</html>