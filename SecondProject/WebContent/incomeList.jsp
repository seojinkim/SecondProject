<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <span class="glyphicon glyphicon-user"
						aria-hidden="true"
					></span> <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>

				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"> <span class="glyphicon glyphicon-user" aria-hidden="true"></span> User Profile
						</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> Settings</a></li>
						<li class="divider"></li>
						<li><a href="#"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> Logout</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav in" id="side-menu">
						<li><a href="controller?command=spendList&id=${sessionScope.logInUser.id}">지출<span class="glyphicon glyphicon-chevron-right pull-right"
								aria-hidden="true"
							></span></a></li>
						<li><a href="controller?command=incomeList&id=${sessionScope.logInUser.id}" class="active">수입<span
								class="glyphicon glyphicon-chevron-right pull-right" aria-hidden="true"
							></span></a></li>
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
					<h1 class="page-header">수입</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<!-- <div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-comments fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">26</div>
									<div>New Comments!</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-green">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-tasks fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">12</div>
									<div>New Tasks!</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-yellow">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-shopping-cart fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">124</div>
									<div>New Orders!</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-red">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-support fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">13</div>
									<div>Support Tickets!</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">View Details</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
			</div>
			/.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="pull-right">
						<form action="controller" method="get">
							<div class="form-group">
								<p>
									<button type="submit" class="btn btn-primary" name="command">삭제</button>
									<button type="submit" class="btn btn-primary" name="command" value="addFromIncomeList">추가</button>
								</p>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<table class="table table-striped">
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
								<td><c:choose>
										<c:when test="${income.incomeNum==2}">
											<!-- 식비 -->
											<img alt="식비" title="식비" src="img/category/in_category_icon_01.png">
										</c:when>
										<c:when test="${income.incomeNum==3}">
											<!-- 주거/통신 -->
											<img alt="주거/통신" title="주거/통신" src="img/category/in_category_icon_02.png">
										</c:when>
										<c:when test="${income.incomeNum==4}">
											<!-- 생활용품 -->
											<img alt="생활용품" title="생활용품" src="img/category/in_category_icon_03.png">
										</c:when>
										<c:when test="${income.incomeNum==5}">
											<!-- 의복/미용 -->
											<img alt="의복/미용" title="의복/미용" src="img/category/in_category_icon_04.png">
										</c:when>
										<c:otherwise>
											<!-- 기타(미분류) -->
											<img alt="기타" title="기타" src="img/category/ex_category_icon_14.png">
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
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>