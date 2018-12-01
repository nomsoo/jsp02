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
ArrayList<String> items=new ArrayList<>();
items.add("오렌지");
items.add("사과");
items.add("포도");
items.add("복숭아");
request.setAttribute("items", items);
%>
<jsp:forward page="ex05_result.jsp"></jsp:forward>
<!-- 참고 : forward와 sendRedirect 차이
forward : 주소고정, 대량의 데이터 전달가능, 컨택스트패스 포함
sendRedirect : 주소변경, 소량의 데이터, 커택스트패스 추가해야함
 -->
</body>
</html>