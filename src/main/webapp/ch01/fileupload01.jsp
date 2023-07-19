<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload01_process.jsp">
		<p> name : <input type="text" name="name">
		<p> title : <input type="text" name="subject">
		<p> file : <input type="file" name="filename">
		<p> <input type="submit" value="파일 업로그">
	</form>
</body>
</html>