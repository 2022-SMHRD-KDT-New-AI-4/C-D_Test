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

<div class="row g-4">
	<div class="col-sm-12 col-xl-6">
		<div class="bg-secondary rounded h-100 p-4">
			<h6 class="mb-4">Doughnut Chart</h6>
			<canvas id="doughnut-chart"></canvas>
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
						<button type="button" class="btn btn-success m-2">자산 추가하기</button>
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
					<h5 class="mb-4" style="text-align: center;">부채</h5>
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
	<script src="assets/darkpan-1.0.0/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment.min.js"></script>
	<script
		src="assets/darkpan-1.0.0/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script
		src="assets/darkpan-1.0.0/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="assets/darkpan-1.0.0/js/main.js"></script>
</body>
</html>