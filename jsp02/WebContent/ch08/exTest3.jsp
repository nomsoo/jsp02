<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<String> items = new ArrayList<>();
items.add("BMW");
items.add("Benz");
items.add("아우디");
items.add("현대");
items.add("기아");
items.add("쉐보레");
request.setAttribute("items", items);
%>
<jsp:forward page="exTest3_result.jsp"></jsp:forward>

</body>
</html>