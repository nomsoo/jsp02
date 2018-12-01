<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.HashMap" %>
<%
HashMap<String,String> map=new HashMap<>();
map.put("포도","grape");
map.put("오렌지","orange");
map.put("바나나","banana");
map.put("사과","apple");
request.setAttribute("map", map);
%>
<jsp:forward page="ex06_result.jsp"></jsp:forward>
</body>
</html>