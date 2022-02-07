<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일일 가계부</title>
<script src='<c:url value="/js/jquery-3.6.0.js" />'></script>
<script>
</script>
</head>
<body>
	<h2>내 가계부</h2>
<form id="insertForm" action="cashbook" method="post">
<table>
	<tr>
		<th>구분</th>
		<td>
		<input type="radio" name="type" id="type" value="수입" checked>수입
		<input type="radio" name="type" id="type" value="지출">지출
		</td>
	</tr>
	<tr>
		<th>메모</th>
		<td><input type="text" name="memo" id="memo"></td>
	</tr>
	<tr>
		<th>금액</th>
		<td><input type="text" name="amount" id="amount"></td>
	</tr>
	<tr>
		<td><input type="submit" value="등록"/></td>
	</tr>
</table>
</form>

<c:forEach var="cashbook" items="${cashbooklist}">
<table>
	<tr>
		<th>날짜</th>
		<th>구분</th>
		<th>메모</th>
		<th>금액</th>
	</tr>
<tr>
	<td>${cashbook.inputdate}</td>
	<td>${cashbook.type}</td>
	<td>${cashbook.memo}</td>
	<td>${cashbook.amount}</td>
</tr>
</c:forEach> 
</table>
</body>
</html>
