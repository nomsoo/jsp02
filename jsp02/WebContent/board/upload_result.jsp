<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!-- cos.jar -->
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>       
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//파일 업로드를 위한 디렉토리 설정,
//윈도우즈는 d:\\, 유닉스는 c:/ 드라이브개념은 없고 디렉토리라는
//개념만 있다.
String upload_path="d:\\upload";
//파일 업로드 최대 사이즈 설정
int size=10*1024*1024; //byte단위 (10MB)
String name="";
String subject="";
String filename="", filename2="";
int filesize=0, filesize2=0;
try{
	//MultipartRequest : request를 확장한 객체
	//new MultipartRequest(request,"업로드 디렉토리",제한용량,
	//		인코딩방식,파일명중복방지처리옵션)
	//파일중복시 처리방법 ; 1)타임스탬프, 2)숫자처리
	
	MultipartRequest multi
	=new MultipartRequest(request,upload_path,size,"utf-8"
			,new DefaultFileRenamePolicy());
	name=multi.getParameter("name");//request.getParamater와 같음
	subject=multi.getParameter("subject");
	Enumeration files=multi.getFileNames();//파일이름을 가져옴
	String file1=(String)files.nextElement();//클라이언트 파일네임
	String file2=(String)files.nextElement();//클라이언트 파일네임
	filename=multi.getFilesystemName(file1);//서버에 업로드된 파일 이름
	File f1=multi.getFile(file1);//File : 파일의 정보를 참조
	filesize=(int)f1.length(); //파일의 사이즈(정수로표현)
	
	filename2=multi.getFilesystemName(file2);
	File f2=multi.getFile(file2);
	filesize2=(int)f2.length();
}catch(Exception e){
	e.printStackTrace();
}
%>
이름 : <%=name%><br>
제목 : <%=subject%><br>
파일1 이름 : <%=filename%><br>
파일1 크기 : <%=filesize%><br>
파일2 이름 : <%=filename2%><br>
파일2 크기 : <%=filesize2%><br>
</body>
</html>