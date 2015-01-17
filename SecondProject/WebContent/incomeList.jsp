<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>수입 리스트</title>
</head>
<body>
	<center>
		수입 리스트 ${requestScope.userInfo}
		<table>
			<tr>
				<th><a href="controller?command=expenseList&id=${requestScope.userInfo.id}">지출</a></th>
				<th><a href="controller?command=incomeList&id=${requestScope.userInfo.id}">수입</a></th>
				<th><a href="controller?">통계</a></th>
			</tr>
		</table>
		<br>
		<table frame="box" border="1">
			<tr>
				<th></th>
				<th>분류</th>
				<th>금액</th>
				<th>메모</th>
				<th>날짜</th>
			</tr>
			<c:forEach items="${requestScope.incomeView}" var="income">
				<tr>
					<td><input type="checkbox" name="incomeIndex" value="${income.rowIndex}"></td>
					<td>${income.incomeName.incomeName}</td>
					<td>${income.incomePrice}</td>
					<td>${income.memo}</td>
					<td>${income.date}</td>
				</tr>
			</c:forEach>
		</table>
	</center>
</body>
</html>