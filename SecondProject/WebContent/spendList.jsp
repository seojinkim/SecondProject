<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>지출 리스트</title>
<style type="text/css">
a:link {
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
	font-size: xx-large;
	width: 200px;
	height: 500px;
	float: left;
	margin-left: 50px;
	margin-right: 10px;
	background-color: #385998;
	width: 200px;
	text-align: center;
}

#content {
	width: 700px;
	height: 500px;
	float: left;
	background: white;
	width: 700px;
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
</head>
<body>
	<div id="wrap">
		<div id="header">
			<header>
			<p>
			<h1 align="center">
				<a href="controller?command=spendList&id=${sessionScope.logInUser.id}"> 석민이와 가계부 </a>
			</h1>
			</p>
			</header>

			<h2 align="right">${sessionScope.logInUser.name}님
				<a href="">마이페이지</a> <a href="">로그아웃</a>
			</h2>

		</div>
		<div id="sidebar">
			<p>
				<a href="controller?command=spendList&id=${sessionScope.logInUser.id}">지출</a>
			</p>
			<p>
				<a href="controller?command=incomeList&id=${sessionScope.logInUser.id}">수입</a>
			</p>
			<p>
				<a href="controller?">통계</a>
			</p>
		</div>
		<div id="content">
			<br>
			<table frame="box" border="1">
				<tr>
					<th></th>
					<th>분류</th>
					<th>금액</th>
					<th>메모</th>
					<th>날짜</th>
				</tr>
				<c:forEach items="${requestScope.spendView}" var="spend">
					<tr>
						<td><input type="checkbox" name="spendIndex" value="${spend.rowIndex}"></td>
						<td align="center"><c:choose>
								<c:when test="${spend.spendNum==2}">
									<!-- 식비 -->
									<img alt="ex_category_icon_01.png" src="image/category/ex_category_icon_01.png">
								</c:when>
								<c:when test="${spend.spendNum==3}">
									<!-- 주거/통신 -->
									<img alt="ex_category_icon_02.png" src="image/category/ex_category_icon_02.png">
								</c:when>
								<c:when test="${spend.spendNum==4}">
									<!-- 생활용품 -->
									<img alt="ex_category_icon_03.png" src="image/category/ex_category_icon_03.png">
								</c:when>
								<c:when test="${spend.spendNum==5}">
									<!-- 의복/미용 -->
									<img alt="ex_category_icon_04.png" src="image/category/ex_category_icon_04.png">
								</c:when>
								<c:when test="${spend.spendNum==6}">
									<!-- 건강/문화 -->
									<img alt="ex_category_icon_05.png" src="image/category/ex_category_icon_05.png">
								</c:when>
								<c:when test="${spend.spendNum==7}">
									<!-- 교육/육아 -->
									<img alt="ex_category_icon_06.png" src="image/category/ex_category_icon_06.png">
								</c:when>
								<c:when test="${spend.spendNum==8}">
									<!-- 교통/차량 -->
									<img alt="ex_category_icon_07.png" src="image/category/ex_category_icon_07.png">
								</c:when>
								<c:when test="${spend.spendNum==9}">
									<!-- 경조사/사회비 -->
									<img alt="ex_category_icon_08.png" src="image/category/ex_category_icon_08.png">
								</c:when>
								<c:when test="${spend.spendNum==10}">
									<!-- 세금/이자 -->
									<img alt="ex_category_icon_09.png" src="image/category/ex_category_icon_09.png">
								</c:when>
								<c:when test="${spend.spendNum==11}">
									<!-- 용돈/기타 -->
									<img alt="ex_category_icon_10.png" src="image/category/ex_category_icon_10.png">
								</c:when>
								<c:when test="${spend.spendNum==12}">
									<!-- 카드대금 -->
									<img alt="ex_category_icon_11.png" src="image/category/ex_category_icon_11.png">
								</c:when>
								<c:when test="${spend.spendNum==13}">
									<!-- 저축/보험 -->
									<img alt="ex_category_icon_12.png" src="image/category/ex_category_icon_12.png">
								</c:when>
								<c:when test="${spend.spendNum==14}">
									<!-- 이체/대체 -->
									<img alt="ex_category_icon_13.png" src="image/category/ex_category_icon_13.png">
								</c:when>
								<c:otherwise>
									<!-- 기타(미분류) -->
									<img alt="ex_category_icon_14.png" src="image/category/ex_category_icon_14.png">
								</c:otherwise>
							</c:choose></td>
						<td>${spend.spendPrice}</td>
						<td>${spend.memo}</td>
						<td>${spend.spendDate}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>