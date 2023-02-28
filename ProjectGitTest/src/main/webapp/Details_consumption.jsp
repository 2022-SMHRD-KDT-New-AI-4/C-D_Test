<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dash & Cash</title>

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap"
	rel="stylesheet">


<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="assets/darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="assets/darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Libraries Stylesheet -->
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
	rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="assets/darkpan-1.0.0/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="assets/darkpan-1.0.0/css/style.css" rel="stylesheet">
</head>

<body>
	<div class="container-fluid position-relative d-flex p-0">

		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->

		<!-- Sidebar Start -->
		<div class="sidebar pe-4 pb-3">
			<nav class="navbar bg-secondary navbar-dark">
				<a href="index.jsp" class="navbar-brand mx-4 mb-3">
					<h3 class="text-primary">DASH&CASH</h3>
				</a>
				<div class="d-flex align-items-center ms-4 mb-4">
					<div class="position-relative">
						<h6 class="ms-3">로그인이 필요합니다</h6>
						<!--  <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <div
                            class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1">
                        </div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">로그인한 아이디가 보여지는 공간</h6>
                        <span>일반회원</span> -->
					</div>
				</div>
				<div class="navbar-nav w-100">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle active"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>메인</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="index.jsp" class="dropdown-item">메인</a> <a href="#"
								class="dropdown-item">캘린더</a>
						</div>
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>입/지출</a>
						<a href="#" class="nav-item nav-link"><i class="fa fa-th me-2"></i>내
							자산</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown"><i class="fa fa-chart-bar me-2"></i>보고서</a>
							<div class="dropdown-menu bg-transparent border-0">
								<a href="#" class="dropdown-item">보고서</a> <a href="#"
									class="dropdown-item">소비현황</a> <a href="#"
									class="dropdown-item">통계</a>
							</div>
						</div>
						<a href="#" class="nav-item nav-link"><i
							class="fa fa-table me-2"></i>목표</a>
					</div>
				</div>
			</nav>
		</div>
		<!-- Sidebar End -->

		<!-- Content Start -->
		<div class="content">

			<!-- Navbar Start -->
			<nav
				class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
				<a href="index.jsp" class="navbar-brand d-flex d-lg-none me-4">
					<h2 class="text-primary mb-0">
						<i class="fa fa-user-edit"></i>
					</h2>
				</a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i
					class="fa fa-bars"></i>
				</a>
				<div class="navbar-nav align-items-center ms-auto">
					<div class="nav-item dropdown">
						<!--  <button type="button" class="btn btn-primary m-2"><a href="signin.html" style="color: white;">로그인</a></button> -->
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"> <img
							class="rounded-circle me-lg-2" src="img/user.jpg" alt=""
							style="width: 40px; height: 40px;"> <span
							class="d-none d-lg-inline-flex">로그인한 아이디가 보여지는공간</span>
						</a>
						<div
							class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
							<a href="#" class="dropdown-item">마이페이지</a> <a href="#"
								class="dropdown-item">마이페이지 수정</a> <a href="index.jsp"
								class="dropdown-item">로그아웃</a>
						</div>


					</div>
				</div>
			</nav>
			<!-- Navbar End -->
			<!-- Navbar End -->
			<!-- Navbar End -->
			<!-- Navbar End -->


			<!-- 항목별 지출 순위 (월 누적 데이터)  Start-->
			<div class="container-fluid pt-4 px-4">
				<div class="col-sm-12 col-xl-13 text-center p-4">
					<div class="row g-4 bg-secondary rounded">


						
							<h3 style="text-align: left; margin-top: 20px; margin-bottom: 0px; display: block;">항목별 지출 순위</h3>
							<a href="" class="align-items-center" style="text-align: right;">Show All</a>
						

						<!-- Chart Start -->
						<div class="col-sm-12 col-xl-3">

							<!--  @type {CanvasRenderingContext2D}   -->
							<canvas id="pie-chart"
								style="display: inline; box-sizing: content-box; flex-grow: 0;"></canvas>

						</div>
						<!-- Chart End -->

						<!-- 막대 Start -->
						<div class="col-xl-3">


							<div class="pg-bar mb-3">
								<h6>저축/보험</h6>
								<div class="progress">
									<div class="progress-bar progress-bar-striped"
										role="progressbar" aria-valuenow="33.2" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
							<div class="pg-bar mb-3">
								<h6>식비</h6>
								<div class="progress">
									<div class="progress-bar progress-bar-striped bg-success"
										role="progressbar" aria-valuenow="28.1" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
							<div class="pg-bar mb-3">
								<h6>공과금</h6>
								<div class="progress">
									<div class="progress-bar progress-bar-striped bg-info"
										role="progressbar" aria-valuenow="13.2" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
							<div class="pg-bar mb-3">
								<h6>생필품</h6>
								<div class="progress">
									<div class="progress-bar progress-bar-striped bg-warning"
										role="progressbar" aria-valuenow="11.6" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
							
							<div class="pg-bar mb-3">
								<h6>품위유지비</h6>
								<div class="progress">
									<div class="progress-bar progress-bar-striped bg-danger"
										role="progressbar" aria-valuenow="8.4" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
							
							<div class="pg-bar mb-3">
								<h6>교통비</h6>
								<div class="progress">
									<div class="progress-bar progress-bar-striped bg-danger"
										role="progressbar" aria-valuenow="3.2" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>
							
							<div class="pg-bar mb-0">
								<h6>기타</h6>
								<div class="progress">
									<div class="progress-bar progress-bar-striped bg-danger"
										role="progressbar" aria-valuenow="2.3" aria-valuemin="0"
										aria-valuemax="100"></div>
								</div>
							</div>

						</div>

						<!-- 막대 End -->
					</div>
				</div>
			</div>



		</div>
		<!-- Content End -->


		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>

	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/chart/chart.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/easing/easing.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/waypoints/waypoints.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment.min.js"></script>
	<script
		src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="assets/darkpan-1.0.0/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="assets/darkpan-1.0.0/js/main.js"></script>

	<script>
		// Pie Chart
		var ctx5 = $("#pie-chart").get(0).getContext("2d");
		var myChart5 = new Chart(ctx5,
				{
					type : "pie",
					data : {
						labels : [ "저축/보험", "식비", "공과금", "생필품", "품위유지비", "교통비",
								"기타" ],
						datasets : [ {
							backgroundColor : [ "rgba(235, 22, 22, .7)",
									"rgba(235, 22, 22, .6)",
									"rgba(235, 22, 22, .5)",
									"rgba(235, 22, 22, .4)",
									"rgba(235, 22, 22, .3)",
									"rgba(235, 22, 22, .2)",
									"rgba(235, 22, 22, .1)", ],
							data : [ 33.2, 28.1, 13.2, 11.6, 8.4, 3.2, 2.3 ]
						} ]
					},
					options : {
						responsive : true
					}
				});
	</script>
</body>
</html>