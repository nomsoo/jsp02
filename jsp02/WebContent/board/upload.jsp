<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>파일 업로드</h2>
<!-- 반드시 post 방식이어야하며 또한
 enctype="multipart/form-data" 파일업로드 타입지정도 반드시 해야함-->
<form name="form1" method="post"
  enctype="multipart/form-data" action="upload_result.jsp">
이름 : <input name="name"><br>
제목 : <input name="subject"><br>
파일1 : <input type="file" name="file1"><br>
파일2 : <input type="file" name="file2"><br>
<input type="submit" value="업로드">  
</form>
</body>
</html>