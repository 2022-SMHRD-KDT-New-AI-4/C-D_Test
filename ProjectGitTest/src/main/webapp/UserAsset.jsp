<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<title>DarkPan - Bootstrap 5 Admin Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

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
				<a href="index.html" class="navbar-brand mx-4 mb-3">
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
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>메인</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="index.html" class="dropdown-item">메인</a> <a href="#"
								class="dropdown-item">캘린더</a>
						</div>
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>입/지출</a>
						<a href="#" class="nav-item nav-link active"><i
							class="fa fa-th me-2"></i>내 자산</a>
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
				<a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
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
								class="dropdown-item">마이페이지 수정</a> <a href="index.html"
								class="dropdown-item">로그아웃</a>
						</div>


					</div>
				</div>
			</nav>
			<!-- Navbar End -->
			
			
			
			
<div class="container-fluid pt-4 px-4">
			<div class="row g-4">
				<div class="col-sm-12 col-xl-6">
					<div class="bg-secondary rounded h-100 p-4">
						<h6 class="mb-4">여기 도넛 그래프 자리인데 도넛이 안떠용 슬퍼욥</h6>
						<canvas id="doughnut-chart"></canvas>
						<br>
					<figure>
								<blockquote class="blockquote" style="text-align: center;">
									<h3>이철민 님의 총 자산은</h3>
									<br>
									<h3>100,000 원 입니다.</h3>
								</blockquote>
								<div style="text-align: center;">
									<br>
									<button type="button" class="btn btn-success m-2">자산
										추가하기</button>
								</div>
							</figure>
					</div>
					
				</div>
				<div class="col-sm-12 col-xl-6">
			<div class="bg-secondary rounded h-100 p-4">
						<div class="border rounded p-4 pb-0 mb-4">
							
							<div class="bg-secondary rounded h-100 p-4">
							<h5 class="mb-4" style="text-align: center;">현금성 자산</h5>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">No</th>
										<th scope="col">은행명</th>
										<th scope="col">잔액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>NH농협</td>
										<td>100,000원</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>신한은행</td>
										<td>1,000,000원</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>기업은행</td>
										<td>10,000,000원</td>
									</tr>
								</tbody>
							</table>
						</div>
						
						<div class="bg-secondary rounded h-100 p-4">
							<h5 class="mb-4" style="text-align: center;">부채</h5>
							<h6 class="mb-4" style="text-align: center;">카드</h6>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">No</th>
										<th scope="col">카드명</th>
										<th scope="col">사용금액</th>
										<th scope="col">사용내역</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>BC카드</td>
										<td>100,000원</td>
										<td>과자 사먹기</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>삼성카드</td>
										<td>1,000,000원</td>
										<td>술값</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>NH농협</td>
										<td>10,000,000원</td>
										<td>카드론 이자</td>
									</tr>
								</tbody>
							</table>
						</div>
						<div class="bg-secondary rounded h-100 p-4">
							<h6 class="mb-4" style="text-align: center;">대출</h6>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">No</th>
										<th scope="col">은행명</th>
										<th scope="col">대출금액</th>
										<th scope="col">사용 내역</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>NH농협</td>
										<td>100,000원</td>
										<td>식비</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>국민은행</td>
										<td>1,000,000원</td>
										<td>월세</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>기업은행</td>
										<td>10,000,000,000원</td>
										<td>전세대출</td>
									</tr>
								</tbody>
							</table>
						</div>
						
							
						</div>
					</div>
			
			</div>

			<div class="row g-4">
				<div class="col-sm-12 col-xl-6">
					<div class="bg-secondary rounded h-100 p-4">
						<div class="border rounded p-4 pb-0 mb-4">
							<figure>
								<blockquote class="blockquote" style="text-align: center;">
									<h3>이철민 님의 총 자산은</h3>
									<br>
									<h3>100,000 원 입니다.</h3>
								</blockquote>
								<div style="text-align: center;">
									<br>
									<button type="button" class="btn btn-success m-2">자산
										추가하기</button>
								</div>
							</figure>
						</div>
					</div>
				</div>
			</div>

			<div class="row g-4">
				<div class="col-sm-12 col-xl-6">
					<div class="bg-secondary rounded h-100 p-4">
						<div class="bg-secondary rounded h-100 p-4">
							<h5 class="mb-4" style="text-align: center;">현금성 자산</h5>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">No</th>
										<th scope="col">은행명</th>
										<th scope="col">잔액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>NH농협</td>
										<td>100,000원</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>신한은행</td>
										<td>1,000,000원</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>기업은행</td>
										<td>10,000,000원</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="col-sm-12 col-xl-6">
					<div class="bg-secondary rounded h-100 p-4">
						<div class="bg-secondary rounded h-100 p-4">
							<h5 class="mb-4" style="text-align: center;">부채</h5>
							<h6 class="mb-4" style="text-align: center;">카드</h6>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">No</th>
										<th scope="col">카드명</th>
										<th scope="col">사용금액</th>
										<th scope="col">사용내역</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>BC카드</td>
										<td>100,000원</td>
										<td>과자 사먹기</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>삼성카드</td>
										<td>1,000,000원</td>
										<td>술값</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>NH농협</td>
										<td>10,000,000원</td>
										<td>카드론 이자</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>


				<div class="col-sm-12 col-xl-6">
					<div class="bg-secondary rounded h-100 p-4">
						<div class="bg-secondary rounded h-100 p-4">
							<h6 class="mb-4" style="text-align: center;">대출</h6>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">No</th>
										<th scope="col">은행명</th>
										<th scope="col">대출금액</th>
										<th scope="col">사용 내역</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">1</th>
										<td>NH농협</td>
										<td>100,000원</td>
										<td>식비</td>
									</tr>
									<tr>
										<th scope="row">2</th>
										<td>국민은행</td>
										<td>1,000,000원</td>
										<td>월세</td>
									</tr>
									<tr>
										<th scope="row">3</th>
										<td>기업은행</td>
										<td>10,000,000,000원</td>
										<td>전세대출</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>



			<!-- JavaScript Libraries -->
			<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
			<script
				src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
			<script src="assets/darkpan-1.0.0/lib/chart/chart.min.js"></script>
			<script src="assets/darkpan-1.0.0/lib/easing/easing.min.js"></script>
			<script src="assets/darkpan-1.0.0/lib/waypoints/waypoints.min.js"></script>
			<script
				src="assets/darkpan-1.0.0/lib/owlcarousel/owl.carousel.min.js"></script>
			<script src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment.min.js"></script>
			<script
				src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment-timezone.min.js"></script>
			<script
				src="assets/darkpan-1.0.0/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

			<!-- Template Javascript -->
			<script src="assets/darkpan-1.0.0/js/main.js"></script>

			<script>
				// Doughnut Chart
				var ctx6 = $("#doughnut-chart").get(0).getContext("2d");
				var myChart6 = new Chart(ctx6, {
					type : "doughnut",
					data : {
						labels : [ "Italy", "France", "Spain", "USA",
								"Argentina" ],
						datasets : [ {
							backgroundColor : [ "rgba(235, 22, 22, .7)",
									"rgba(235, 22, 22, .6)",
									"rgba(235, 22, 22, .5)",
									"rgba(235, 22, 22, .4)",
									"rgba(235, 22, 22, .3)" ],
							data : [ 55, 49, 44, 24, 15 ]
						} ]
					},
					options : {
						responsive : true
					}
				});
			</script>
</body>
</html>