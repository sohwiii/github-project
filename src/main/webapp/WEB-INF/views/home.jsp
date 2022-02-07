<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일일 가계부</title>
<script src="resources/js/jquery-3.6.0.js"></script>
</head>
<body>

	<h1>[ 일일 가계부 ]</h1>
	<c:if test="${loginId != null}">
	<h2>
	${sessionScope.loginName}(${sessionScope.loginId})님 환영합니다 !!!<br>
	</h2>
	</c:if>
	
	<c:if test="${loginId == null}">
	<p><a href="signup">회원가입</a></p>
	<p><a href="login">로그인</a></p>
	</c:if>
	
	<c:if test="${loginId != null}">
	<p><a href="logout">로그아웃</a></p>
	<p><a href="cashbook">가계부</a></p>
	<p><a href="yearly">연도별 통계</a></p>
	</c:if>
	
</body>
</html>
