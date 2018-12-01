<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--
1)JSTL(Jsp Standard Tag Library, JSP 표준 태그 라이브러리)
2)JSTL 사용 이유 : 모델1은 jsp페이지 중심, 모델2는 java코드(서블릿
,DAO,DTO)중심, jsp웹페이지에서 java코드를 안쓸 수 없지만 이를
최소화 하기 위해 JSTL과 EL기법을 씀, 즉, JSP내부의 복잡한 자바
코드를 대체하기 위한 태그
3)taglib prefix="태그 접두어" uri="태그라이브러리의 식별자"
4)c:Core tag(핵심태그, 제일 자주 사용되는 태그) => 태그 접두어 접근
  -->

<%@ taglib prefix="c" 
uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" 
uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!-- 
set var="변수명" value="값"
-->
<c:set var="path" 
value="${pageContext.request.contextPath}" />  

<!-- 위와 같은 코드가 자주쓰여서 header에 넣고 include시킴 -->
<%-- <% String path=request.getContextPath(); %>
<%=path %> --%>

<link rel="stylesheet" href="${path}/include/css/bootstrap.css">
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="${path}/include/js/bootstrap.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 