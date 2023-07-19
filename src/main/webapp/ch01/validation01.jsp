<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<script type="text/javascript">
	function checkform() {
		alert("아이디 :" + document.loginForm.id.value+"\n"+"비밀번호 : "+document.loginForm.passwd.value);
	}
</script>
<body>
	<form name="loginForm">
		<p> id : <input type="text" name="id">
		<p> password : <input type="password" name="passwd">
		<p><input type="submit" value="send" onclick="checkform()">
	
	</form>
</body>
</html>