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


		<!-- 마이페이지 수정 Start -->
		<div class="container-fluid">
			<div class="row h-100 align-items-center justify-content-center"
				style="min-height: 100vh;">
				<div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
					<div class="bg-secondary rounded p-4 p-sm-5 my-4 mx-3">
						<div
							class="d-flex align-items-center justify-content-between mb-3">
							
							<h4>회원정보 수정</h4>
						</div>
						<div class="form-floating mb-3">
							<dl>
								<h6 class="mb-4">아이디</h6>
								<dd class="col-sm-8">zidari</dd>
							</dl>
						</div>
						
						<div class="form-floating mb-3">
							<dl>
								<h6 class="mb-4">닉네임</h6>
								<dd class="col-sm-8">자냥미</dd>
							</dl>
						</div>
						
							<div class="form-floating mb-3">
							<dl>
								<h6 class="mb-4">나이</h6>
								<dd class="col-sm-8">234667 세</dd>
							</dl>
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
						<script
							src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment.min.js"></script>
						<script
							src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment-timezone.min.js"></script>
						<script
							src="assets/darkpan-1.0.0/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>



						<div class="form-floating mb-4">
						<h6 class="mb-4">비밀번호</h6>
							<input type="password" class="form-control" id="floatingPassword"
								onchange="check_pw()" placeholder="비밀번호 변경"> <label
								for="floatingPassword"></label>
						</div>


						<div class="form-floating mb-4">
						<h6 class="mb-4">비밀번호 확인</h6>
							<input type="password" class="form-control"
								id="floatingPassword2" onchange="check_pw()"
								placeholder="비밀번호 확인"> <label for="floatingPassword2">
								</label>&nbsp;<span id="check_check"></span>
						</div>
						<script>
							function check_pw() {
								var pw = document
										.getElementById('floatingPassword').value;

								if (document.getElementById('floatingPassword').value != ''
										&& document
												.getElementById('floatingPassword2').value != '') {
									if (document
											.getElementById('floatingPassword').value == document
											.getElementById('floatingPassword2').value) {
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
						<h6 class="mb-4">닉네임</h6>
							<input type="text" class="form-control" id="floatingInput"
								placeholder="변경할 닉네임을 적어주세요."> <label
								for="floatingInput"></label>
						</div>

						<div class="bg-secondary rounded h-100 p-4">
						<h6 class="mb-4">세대원 수</h6>
							<select class="form-select form-select-lg mb-3"
								aria-label=".form-select-lg example">
								<option selected>세대원 수</option>
								<option value="user_f_num1">1명</option>
								<option value="user_f_num2">2명</option>
								<option value="user_f_num3">3명</option>
								<option value="user_f_num4">4명</option>
								<option value="user_f_num5">그 이상</option>
							</select>
						</div>



						<div class="bg-secondary rounded h-100 p-4">
						<h6 class="mb-4">연봉</h6>
							<select class="form-select form-select-lg mb-3"
								aria-label=".form-select-lg example">
								<option selected>연봉 선택</option>
								<option value="salary1">3000만원 이하</option>
								<option value="salary2">3000~4000만원</option>
								<option value="salary3">4000~5000만원</option>
								<option value="salary4">5000~6000만원</option>
								<option value="salary5">6000만원이상</option>
							</select>
						</div>
						<a></a>
						<div
							class="d-flex align-items-center justify-content-between mb-4">


							<button type="submit" class="btn btn-primary py-3 w-100 mb-4">회원정보
								수정</button>
						</div>
						<div>
							<br>
							<br>

						</div>
					</div>
				</div>
			</div>
			<!-- 마이페이지 수정 End -->
		</div>

		<!-- JavaScript Libraries -->
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
		<script src="lib/chart/chart.min.js"></script>
		<script src="lib/easing/easing.min.js"></script>
		<script src="lib/waypoints/waypoints.min.js"></script>
		<script src="lib/owlcarousel/owl.carousel.min.js"></script>
		<script src="lib/tempusdominus/js/moment.min.js"></script>
		<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
		<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

		<!-- Template Javascript -->
		<script src="assets/darkpan-1.0.0/js/main.js"></script>
</body>
</html>