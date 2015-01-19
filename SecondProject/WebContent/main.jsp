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
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <span class="glyphicon glyphicon-user"
						aria-hidden="true"
					></span> <span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>

				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"> <span class="glyphicon glyphicon-user" aria-hidden="true"></span> User Profile</a></li>
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
					<h1 class="page-header">Money Book</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-6">
					<h2>${sessionScope.logInUser.name}님 반갑습니다.</h2>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.min.js"></script>
</body>
</html>