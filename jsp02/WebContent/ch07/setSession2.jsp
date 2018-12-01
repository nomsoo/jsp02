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
String id = "kim";
String passwd = "1234";
String name = "홍길동";
String email = "hong@gmail.com";
String hp = "010-1234-5678";
int age = 33;
double height = 170.55;
//쿠키는 String만 되지만 세션변수는 자료형의 제한이 없음.
//인코딩할 필요 없음
session.setAttribute("id", id);
session.setAttribute("passwd", passwd);
session.setAttribute("name", name);
session.setAttribute("email", email);
session.setAttribute("hp", hp);
session.setAttribute("age", age);
session.setAttribute("height", height);
%>
세션 변수가 저장되었습니다.
<a href="viewSession2.jsp">세션 확인</a>



</body>
</html>