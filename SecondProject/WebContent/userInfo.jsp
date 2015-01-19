<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Money Book</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<!-- Custom CSS -->
<link href="css/sb-admin-2.css" rel="stylesheet">
</head>
<body>
	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="main.jsp">Money Book</a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <span class="glyphicon glyphicon-user" aria-hidden="true"></span> <span
						class="glyphicon glyphicon-chevron-down" aria-hidden="true"
					></span>

				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="userInfo.jsp"> <span class="glyphicon glyphicon-user" aria-hidden="true"></span> 마이 페이지
						</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> 설정</a></li>
						<li class="divider"></li>
						<li><a href="#"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> 로그아웃</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav in" id="side-menu">
						<li><a href="controller?command=spendList&id=${sessionScope.logInUser.id}">지출<span class="glyphicon glyphicon-chevron-right pull-right" aria-hidden="true"></span></a></li>
						<li><a href="controller?command=incomeList&id=${sessionScope.logInUser.id}">수입<span class="glyphicon glyphicon-chevron-right pull-right" aria-hidden="true"></span></a></li>
						<li><a href="#">통계<span class="glyphicon glyphicon-chevron-right pull-right" aria-hidden="true"></span></a></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper" style="min-height: 330px;">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">${sessionScope.logInUser.name}님의회원정보</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<form class="form-horizontal" action="controller" method="post">
							<div class="form-group">
								<label class="col-sm-2 control-label">아이디</label>
								<div class="col-sm-8">${sessionScope.logInUser.id}</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">비밀번호</label>
								<div class="col-sm-8">
									<input type="password" id="inputPassword" name="pw" class="form-control" placeholder="비밀번호" required>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">이름</label>
								<div class="col-sm-8">${sessionScope.logInUser.name}</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">생년월일</label>
								<div class="col-sm-8">
									<fmt:formatDate pattern="yyyy-MM-dd" value="${sessionScope.logInUser.birthday}" />
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">성별</label>
								<div class="col-sm-8">
									<%-- 									${sessionScope.logInUser.sex == 'M'} --%>
									<c:choose>
										<c:when test="${sessionScope.logInUser.sex == 77}">남자</c:when>
										<c:when test="${sessionScope.logInUser.sex == 70}">여자</c:when>
										<c:otherwise>개발자</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">회원/매니저</label>
								<div class="col-sm-8">
									<c:choose>
										<c:when test="${sessionScope.logInUser.grade == 2}">회원</c:when>
										<c:when test="${sessionScope.logInUser.grade == 1}">개발자</c:when>
										<c:otherwise>외계인</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-7">
									<button class="btn btn-primary btn-lg btn-block" name="command" value="join">수 정</button>
									<span class="pull-right"><a href="javascript:history.back()">뒤로</a></span>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- /container -->
		</div>
		<!-- /.row -->
		<!-- /#page-wrapper -->

	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>