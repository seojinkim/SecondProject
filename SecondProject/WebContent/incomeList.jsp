<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ����Ʈ</title>
</head>
<body>
	<center>
		���� ����Ʈ ${requestScope.userInfo}
		<table>
			<tr>
				<th><a href="controller?command=expenseList&id=${requestScope.userInfo.id}">����</a></th>
				<th><a href="controller?command=incomeList&id=${requestScope.userInfo.id}">����</a></th>
				<th><a href="controller?">���</a></th>
			</tr>
		</table>
		<br>
		<table frame="box" border="1">
			<tr>
				<th></th>
				<th>�з�</th>
				<th>�ݾ�</th>
				<th>�޸�</th>
				<th>��¥</th>
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