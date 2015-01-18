<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
a:link {
	color: white;
	text-decoration: none
}

a:visited {
	color: white;
	text-decoration: none;
}

a:hover {
	color: white;
	text-decoration: underline;
}

#head {
	color: white;
	background-color: #385998;
}

#wrap {
	width: 1000px;
	height: 800px;
	background: white;
}

#header {
	width: 900px;
	height: 130px;
	margin-left: 50px;
	margin-bottom: 10px;
	background-color: #385998;
}

#middle {
	width: 1000px;
	float: left;
	background: black;
}

#sidebar {
	width: 200px;
	height: 500px;
	float: left;
	margin-left: 50px;
	margin-right: 10px;
	background-color: #385998
}

#content {
	width: 700px;
	height: 500px;
	float: left;
	background: white;
}

#footer {
	width: 900px;
	height: 130px;
	float: left;
	margin-left: 50px;
	margin-top: 10px;
	background: orange;
}
</style>
<title>���� ����Ʈ</title>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<header>
			<p>
			<h1 align="center">
				<a href="controller?command=spendList&id=${sessionScope.logInUser.id}"> �����̿� ����� </a>
			</h1>
			</p>
			</header>

			<h2 align="right">${sessionScope.logInUser.name}��
				<a href="">����������</a> <a href="">�α׾ƿ�</a>
			</h2>

		</div>
		<div id="sidebar">
			<table>
				<tr>
					<th><a href="controller?command=spendList&id=${sessionScope.logInUser.id}">����</a></th>
					<th><a href="controller?command=incomeList&id=${sessionScope.logInUser.id}">����</a></th>
					<th><a href="controller?">���</a></th>
				</tr>
			</table>
		</div>
		<br>
		<div id="content">
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
						<td align="center"><c:choose>
								<c:when test="${income.incomeNum==2}">
									<!-- �ĺ� -->
									<img alt="in_category_icon_01.png" src="image/category/in_category_icon_01.png">
								</c:when>
								<c:when test="${income.incomeNum==3}">
									<!-- �ְ�/��� -->
									<img alt="in_category_icon_02.png" src="image/category/in_category_icon_02.png">
								</c:when>
								<c:when test="${income.incomeNum==4}">
									<!-- ��Ȱ��ǰ -->
									<img alt="in_category_icon_03.png" src="image/category/in_category_icon_03.png">
								</c:when>
								<c:when test="${income.incomeNum==5}">
									<!-- �Ǻ�/�̿� -->
									<img alt="in_category_icon_04.png" src="image/category/in_category_icon_04.png">
								</c:when>
								<c:otherwise>
									<!-- ��Ÿ(�̺з�) -->
									<img alt="ex_category_icon_14.png" src="image/category/ex_category_icon_14.png">
								</c:otherwise>
							</c:choose></td>
						<td>${income.incomePrice}</td>
						<td>${income.memo}</td>
						<td>${income.incomeDate}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>