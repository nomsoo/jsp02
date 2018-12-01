<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="str" value="study html java jsp" />
문자열의 길이: ${fn:length(str)} <br>
키워드의 인덱스 : ${fn:indexOf(str, 'java')}<br>
내용 변경 : ${fn:replace(str, 'html', 'HTML5')}
</body>
</html>