<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	
		Enumeration params = multi.getParameterNames();
		
		while (params.hasMoreElements()) {
			String name = (String) params.nextElement();
			String value = multi.getParameter(name);
			out.println(name + "=" +value+"<Br>");
		}
		
		Enumeration files = multi.getFileNames();
		
		while(files.hasMoreElements()) {
			String name = (String) files.nextElement();
			String filename = multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			File file = multi.getFile(name);
			
			out.println("parameter name :" + name+"<br>");
			out.println("real file name :" + original+"<Br>");
			out.println("save file name :"+ filename+"<br>");
			out.println("file contents type :"+type+"<br>");
			
			if (file != null) {
				out.println("file size:" +file.length());
				out.println("<Br>");
			}
		}
	%>
</body>
</html>