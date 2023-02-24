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

	<!-- UserAsset_Add start -->
	<div class="container-fluid pt-4 px-4">
		<div class="row g-4">
			<div class="col-sm-12 col-xl-6">
				<div class="bg-secondary rounded h-100 p-4">
					<h3 class="mb-4" style="text-align: center;">내 자산 추가</h3>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault1" checked> <label
							class="form-check-label" for="flexRadioDefault1"><h6>현금성 자산</h6></label> <select
							class="form-select mb-3" aria-label="Default select example">
							<option selected>은행 선택</option>
							<option value="1">NH농협</option>
							<option value="2">KB국민은행</option>
							<option value="3">신한은행</option>
						</select>
						<div class="row mb-3">
							<label for="inputEmail3" class="col-sm-2 col-form-label">잔액
								작성</label>
							<div class="col-sm-10">
								<input type="NUMBER" class="form-control" id="inputEmail3">
							</div>
						</div>
					</div>
					<br>
					<br>
					<div class="form-check">
						<input class="form-check-input" type="radio"
							name="flexRadioDefault" id="flexRadioDefault2"> <label
							class="form-check-label" for="flexRadioDefault2"><h6>부채</h6></label>
						<div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="radio"
									name="inlineRadioOptions" id="inlineRadio1" value="option1">
								<label class="form-check-label" for="inlineRadio1">신용카드</label>
							</div>

							<div class="row mb-3">
								<label for="inputEmail3" class="col-sm-2 col-form-label">카드명</label>
								<select class="form-select mb-3"
									aria-label="Default select example">
									<option selected>카드 선택</option>
									<option value="1">BC카드</option>
									<option value="2">KB국민카드</option>
									<option value="3">신한카드</option>
								</select>
							</div>
						</div>

						<div class="row mb-3">
							<label for="inputEmail3" class="col-sm-2 col-form-label">사용
								액</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3">
							</div>
						</div>

						<div class="row mb-3">
							<label for="inputEmail3" class="col-sm-2 col-form-label">사용
								내역</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="inputEmail3">
							</div>
						</div>

						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="option2">
							<label class="form-check-label" for="inlineRadio2">대출</label>
						</div>
						<div>

							<select class="form-select mb-3"
								aria-label="Default select example">
								<option selected>은행 선택</option>
								<option value="1">NH농협</option>
								<option value="2">KB국민은행</option>
								<option value="3">신한은행</option>
							</select>
						</div>
					</div>


				<div class="row mb-3">
					<label for="inputEmail3" class="col-sm-2 col-form-label">사용액</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3">
					</div>
				</div>

				<div class="row mb-3">
					<label for="inputEmail3" class="col-sm-2 col-form-label">사용내역</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputEmail3">
					</div>
				</div>

	<hr>
	<div style="text-align: center;">
		<button type="button" class="btn btn-success m-2"
			onclick="Asset_Add()">자산 추가</button>

		<script type="text/javascript">
			function Asset_Add() {
				let returnValue = confirm('자산을 추가하시겠습니까?');
				if (returnValue === true) { // 확인 버튼을 눌렀을 경우
					returnValue = '자산추가함';
				} else { // 취소 버튼을 눌렀을 경우
					returnValue = '자산추가 ';
				}
				alert(returnValue);

			}
		</script>
		</div>
			</div>
		</div>
	</div>
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