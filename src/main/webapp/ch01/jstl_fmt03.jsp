<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p><jsp:useBean id="now" class="java.util.Date" />
	<p><fmt:formatDate value="${now}" type="date" />
	<p><fmt:formatDate value="${now}" type="time" />
	<p><fmt:formatDate value="${now}" type="both" dateStyle="default" />
	<p><fmt:formatDate value="${now }" type="both" pattern="yyyy년MM월 HH시 mm분 55초 E요일" />
 </body>
</html>