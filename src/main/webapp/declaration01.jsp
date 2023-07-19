<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! int sum(int a, int b) {
		
		return a+b;
	}
		%>
	
	<%
		int count = 0;
	%>
	
	Page Count is
	<%=++count
	%>
</body>
</html>