<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--
1)EL의 특징 : JSP에 내장되어 있다. 코드가 깔끔하다. 조건문,반복문의 기능은 없다. 간단한 계산은 가능하다.
2)JSTL의 특징 : 외부라이브러리(jar파일)가 필요하다. 조건문,반복문 등 복잡한 연산이 가능하다.
따라서 EL은 단독으로 쓰이지 않고 JSTL과 혼합해서 쓴다.
-->
<%-- ${변수 or 식} 주석처리 유의, EL은 자바코드임--%>
<!-- EL은 간단한 사칙연산 및 삼항연산등은 가능하다. -->

${2 + 5}<br>
${4 / 5}<br>
${7 mod 5}<br> <!--나머지 연산 -->
${2 < 3}<br>
${3.1 le 3.2}<br> <!-- LEss(작다) -->
${(5>3) ? 5 : 3}<br>
</body>
</html>