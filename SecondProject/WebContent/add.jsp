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
						<li><a href="controller?command=spendList&id=${sessionScope.logInUser.id}" class="active">Expense</a></li>
						<li><a href="controller?command=incomeList&id=${sessionScope.logInUser.id}" class="active">Income</a></li>
						<li><a href="#" class="active">Analysis</a></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>


		<div id="page-wrapper" style="min-height: 330px;">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">지출</h1>
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
						<p></p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<form action="controller" method="get">
						<div class="form-group">
							<label for="spendCategory">분류</label> <select class="form-control" name="spendCategory" id="spendCategory">
								<option value="2">식비</option>
								<option value="3">주거/통신</option>
								<option value="4">생활용품</option>
								<option value="5">의복/미용</option>
								<option value="6">건강/문화</option>
								<option value="7">교육/육아</option>
								<option value="8">교통/차량</option>
								<option value="9">경조사/회비</option>
								<option value="10">세금/이자</option>
								<option value="11">용돈/기타</option>
								<option value="12">카드대금</option>
								<option value="13">저축/보험</option>
								<option value="14">이체/대체</option>
								<option value="15">기타</option>
							</select>
						</div>
						<div class="form-group">
							<label for="spendLocation">장소</label> <input type="text" class="form-control" name="spendLocation" id="spendLocation" placeholder="장소를 입력하세요.">
						</div>
						<div class="form-group">
							<label for="spendPrice">금액</label> <input type="text" class="form-control" name="spendPrice" id="spendPrice" placeholder="금액을 입력하세요.">
						</div>
						<div class="form-group">
							<label for="spendDate">날짜</label> <input type="datetime-local" class="form-control" name="spendDate" id="spendDate">
						</div>
						<div class="form-group">
							<label for="spendMemo">메모</label>
							<textarea class="form-control" rows="3" name="spendMemo"></textarea>
						</div>
						<div class="form-group">
							<span class="pull-right">
								<button type="submit" class="btn btn-primary" name="command" value="addSpned">추가</button>
								<button type="button" class="btn btn-default" onclick="history.back()">취소</button>
							</span>
						</div>
					</form>
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