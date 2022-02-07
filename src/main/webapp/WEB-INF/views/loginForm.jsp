<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<script src="resources/js/jquery-3.6.0.js"></script>
<script>
//로그인 폼 검사
function formCheck() {
	var id = document.getElementById('id');
	var pw = document.getElementById('password');
	
	if (id.value.length < 3 || id.value.length > 10) {
		alert("ID는 3~10자로 입력하세요.");
		id.focus();
		id.select();
		return false;
	}
	if (pw.value.length < 3 || pw.value.length > 10) {
		alert("비밀번호는 3~10자로 입력하세요.");
		pw.focus();
		pw.select();
		return false;
	}
	return true;
}
</script>
</head>
<body>
<h1>[ 로그인 ]</h1>

<form id="loginForm" action="login" method="post" onSubmit="return formCheck();">
<table>
<tr>
	<th>ID</th>
	<td><input type="text" name="userid" id="userid" /></td>
</tr>
<tr>
	<th>Password</th>
	<td><input type="password" name="userpwd" id="userpwd" /></td>
</tr>
</table>
	<input type="submit" value="로그인" />
	<input type="button" value="취소" onclick="history.back()"/>

</form>

</body>
</html>