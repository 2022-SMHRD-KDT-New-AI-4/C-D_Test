<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
						<a href="signin.jsp"><h6 class="ms-3"> �α����� �ʿ��մϴ�</h6></a>
						<!--  <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <div
                            class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1">
                        </div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">�α����� ���̵� �������� ����</h6>
                        <span>�Ϲ�ȸ��</span> -->
					</div>
				</div>
				<div class="navbar-nav w-100">
					<div class="nav-item dropdown">
						<a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>����</a>
						<div class="dropdown-menu bg-transparent border-0">
							<a href="index.jsp" class="dropdown-item">����</a> 
							<a href="#" class="dropdown-item">Ķ����</a>
						</div>
						<a href="#" class="nav-link dropdown-toggle"
							data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>��/����</a>
						<a href="#" class="nav-item nav-link"><i class="fa fa-th me-2"></i>���ڻ�</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-chart-bar me-2"></i>������</a>
							<div class="dropdown-menu bg-transparent border-0">
								<a href="#" class="dropdown-item">������</a> 
								<a href="#" class="dropdown-item">�Һ���Ȳ</a> 
								<a href="#" class="dropdown-item">���</a>
							</div>
						</div>
						<a href="#" class="nav-item nav-link"><i class="fa fa-table me-2"></i>��ǥ</a>
					</div>
				</div>
			</nav>
		</div>
		<!-- Sidebar End -->
		<!-- Content Start -->
		<div class="content">
			<!-- Navbar Start -->
			<nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
				<a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
					<h2 class="text-primary mb-0">
						<i class="fa fa-user-edit"></i>
					</h2>
				</a> 
				<a href="#" class="sidebar-toggler flex-shrink-0"> <iclass="fa fa-bars"></i></a>
				<div class="navbar-nav align-items-center ms-auto">
					<div class="nav-item dropdown">
						<!--  <button type="button" class="btn btn-primary m-2"><a href="signin.html" style="color: white;">�α���</a></button> -->
						<a href="#" class="nav-link dropdown-toggle"data-bs-toggle="dropdown"> 
							<img class="rounded-circle me-lg-2" src="img/user.jpg" alt="" style="width: 40px; height: 40px;"> 
							<span class="d-none d-lg-inline-flex">�α����� ���̵� �������°���</span>
						</a>
						<div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
							<a href="Mypage.jsp" class="dropdown-item">����������</a> 
							<a href="Mypage_modify.jsp" class="dropdown-item">���������� ����</a> 
							<a href="signin.jsp" class="dropdown-item">�α׾ƿ�</a>
						</div>


					</div>
				</div>
			</nav>
			<!-- Navbar End -->
			<!-- ���� Start -->
			<div class="container-fluid pt-4 px-4">
				<div
					class="row vh-100 bg-secondary rounded align-items-center justify-content-center mx-0">

					<!-- �׸� ���� ���� (�� ���� ������)  Start-->
					<div class="container-fluid pt-4 px-4">
						<div class="bg-secondary text-center rounded p-4">

							<h3 class="mb-4">�׸� ���� ����</h3>

							<!-- Chart Start -->
							<div class="col-md-6 text-center">
								<canvas id="pie-chart"></canvas>
							</div>
							<!-- Chart End -->

							<!-- ���� Start -->
							<div class="col-sm-12 col-xl-6">

								<div class="pg-bar mb-3">
									<h6>1�� ������</h6>
									<div class="progress">
										<div class="progress-bar progress-bar-striped"
											role="progressbar" aria-valuenow="10" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>

								<div class="pg-bar mb-3">
									<h6>5�� ������</h6>
									<div class="progress">
										<div class="progress-bar progress-bar-striped bg-success"
											role="progressbar" aria-valuenow="25" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>
								<div class="pg-bar mb-3">
									<h6>100�� ������</h6>
									<div class="progress">
										<div class="progress-bar progress-bar-striped bg-info"
											role="progressbar" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>
								<div class="pg-bar mb-3">
									<h6>1000�� ������</h6>
									<div class="progress">
										<div class="progress-bar progress-bar-striped bg-warning"
											role="progressbar" aria-valuenow="75" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>
								<div class="pg-bar mb-0">
									<h6>1�� ������</h6>
									<div class="progress">
										<div class="progress-bar progress-bar-striped bg-danger"
											role="progressbar" aria-valuenow="10" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>

							</div>

							<!-- ���� End -->
						</div>
					</div>
					
				</div>
			</div>
			<!-- ���� End -->
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
		// Pie Chart
		var ctx5 = $("#pie-chart").get(0).getContext("2d");
		var myChart5 = new Chart(ctx5, {
			type : "pie",
			data : {
				labels : [ "Italy", "France", "Spain", "USA", "Argentina" ],
				datasets : [ {
					backgroundColor : [ "rgba(235, 22, 22, .7)",
							"rgba(235, 22, 22, .6)", "rgba(235, 22, 22, .5)",
							"rgba(235, 22, 22, .4)", "rgba(235, 22, 22, .3)" ],
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
<body>

</body>
</html>