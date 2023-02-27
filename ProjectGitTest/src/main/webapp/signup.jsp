<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
<title>Dash&Cash</title>
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
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
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
<link href="assets/darkpan-1.0.0/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/darkpan-1.0.0/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css"
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
                        <a href="signin.jsp"><h6 class="ms-3"> 로그인이 필요합니다</h6></a>
                       <!--  <img class="rounded-circle" src="assets/darkpan-1.0.0/img/user.jpg" alt="" style="width: 40px; height: 40px;">
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
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>메인</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="index.jsp" class="dropdown-item">메인</a>
                            <a href="#" class="dropdown-item">캘린더</a>
                        </div>
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>입/지출</a>
                        <a href="#" class="nav-item nav-link"><i class="fa fa-th me-2"></i>내 자산</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-chart-bar me-2"></i>보고서</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="#" class="dropdown-item">보고서</a>
                                <a href="#" class="dropdown-item">소비현황</a>
                                <a href="#" class="dropdown-item">통계</a>
                            </div>
                        </div>
                        <a href="#" class="nav-item nav-link"><i class="fa fa-table me-2"></i>목표</a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->
         <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                <a href="index.jsp" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <!--  <button type="button" class="btn btn-primary m-2"><a href="signin.html" style="color: white;">로그인</a></button> -->
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" >
                            <img class="rounded-circle me-lg-2" src="img/user.jpg" alt=""
                                style="width: 40px; height: 40px;"> 
                            <span class="d-none d-lg-inline-flex">로그인한 닉네임이 보여지는공간</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="Mypage.jsp" class="dropdown-item">마이페이지</a>
                            <a href="Mypage_modify.jsp" class="dropdown-item">마이페이지 수정</a>
                            <a href="index.jsp" class="dropdown-item">로그아웃</a>
                        </div>


                    </div>
                </div>
            </nav>
            <!-- Navbar End -->


		<!-- Sign Up Start -->
		<div class="container-fluid">
			<div class="row h-100 align-items-center justify-content-center"
				style="min-height: 100vh;">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
					<div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							<h4>회원가입</h4>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="아이디"> <label for="floatingInput">아이디</label>
						</div>


						<div class="form-floating mb-4">
							<input type="password" class="form-control" id="floatingPassword" onchange="check_pw()"
								placeholder="비밀번호"> <label for="floatingPassword">비밀 번호</label>
						</div>


						<div class="form-floating mb-4">
							<input type="password" class="form-control" id="floatingPassword2" onchange="check_pw()"
								placeholder="비밀번호 확인"> <label for="floatingPassword2">비밀번호
								확인</label>&nbsp;<span id="check_check"></span>
						</div>
						<script>
							function check_pw() {
								var pw = document.getElementById('floatingPassword').value;

								if (document.getElementById('floatingPassword').value != ''
										&& document.getElementById('floatingPassword2').value != '') {
									if (document.getElementById('floatingPassword').value == document.getElementById('floatingPassword2').value){ 
										document.getElementById('check_check').innerHTML = '비밀번호가 일치합니다.'
										document.getElementById('check_check').style.color = 'blue';
									} else {
										document.getElementById('check_check').innerHTML = '비밀번호가 일치하지 않습니다.';
										document.getElementById('check_check').style.color = 'red';
									}
								}
							}
						</script>
						
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingText"
								placeholder="이름"> <label for="floatingText">이름</label>
						</div>


						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="나이"> <label
								for="floatingInput">나이</label>
						</div>
						
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="닉네임"> <label
								for="floatingInput">닉네임</label>
						</div>
						
                            <h6 class="mb-4">세대원 수</h6>
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                <option selected>세대원 수 </option>
                                <option value="user_f_num1">1명</option>
                                <option value="user_f_num2">2명</option>
                                <option value="user_f_num3">3명</option>
                                <option value="user_f_num4">4명</option>
                                <option value="user_f_num5">그 이상</option>
                            </select>
						
							
					
                            <h6 class="mb-4">연봉</h6>
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                <option selected>연봉 선택</option>
                                <option value="salary1">3000만원 이하</option>
                                <option value="salary2">3000~4000만원</option>
                                <option value="salary3">4000~5000만원</option>
                                <option value="salary4">5000~6000만원</option>
                                <option value="salary5">6000만원이상</option>
                            </select>
						<a></a>
						<div
							class="d-flex align-items-center justify-content-between mb-4">
							
						
							<button type="submit" class="btn btn-primary py-3 w-100 mb-4" onclick="creat_id();">회원가입</button>
						</div>
						<div>
							<br><br>
							<p class="text-center mb-0">
								이미 대시앤캐시의 회원입니까? <a href="signin.jsp">로그인!</a>
							</p>
							<script>
						    	function creat_id() {
						    		alert("회원가입되셨습니다.")
                                    location.href="signin.html";
						    	}
							</script>
						</div>
					</div>
				</div>
			</div>
			<!-- 회원가입 End -->
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
		<script src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment-timezone.min.js"></script>
		<script src="assets/darkpan-1.0.0/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

		<!-- Template Javascript -->
		<script src="assets/darkpan-1.0.0/js/main.js"></script>
</body>
</html>