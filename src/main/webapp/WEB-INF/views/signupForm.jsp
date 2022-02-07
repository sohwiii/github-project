<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script src="resources/js/jquery-3.6.0.js"></script>

<script>
//가입폼 확인
function formCheck() {
	var id = document.getElementById('userid');
	var pw = document.getElementById('userpwd');
	var pw2 = document.getElementById('userpwd2');
	
	if (userid.value.length < 3 || userid.value.length > 10) {
		alert("아이디는 3~10자를 입력하세요.");
		userid.focus();
		userid.select();
		return false;
	}
	if (userpwd.value.length < 3 || userpwd.value.length > 10) {
		alert("비밀번호는 3~10자를 입력하세요.");
		userpwd.focus();
		userpwd.select();
		return false;
	}
	if (userpwd.value != userpwd2.value) {
		alert("비밀번호가 일치하지 않습니다.");
		pwd.focus();
		pwd.select();
		return false;
	}
	return true;
}

</script>
</head>

<body>
<h1>[ 회원 가입 ]</h1>

<form id="signupForm" action="signup"  method="post" onsubmit="return formCheck();">
<table>
	<tr>
		<th>ID</th>
		<td>
			<input type="text" name="userid" id="userid" maxlength="10">
		</td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<td><input type="password" name="userpwd" id="userpwd" placeholder="비밀번호 입력"></td>
	</tr>
	<tr>
		<th>비밀번호 확인</th>
		<td><input type="password" id="userpwd2" placeholder="비밀번호 다시 입력"></td>
	</tr>
</table>
	<br>

<input type="submit" value="가입" />
<input type="button" value="취소" onclick="history.back()"/>

</form>

</body>
</html>
