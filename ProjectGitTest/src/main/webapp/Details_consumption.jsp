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
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
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
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i
                                class="fa fa-laptop me-2"></i>메인</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="index.html" class="dropdown-item">메인</a> <a href="#" class="dropdown-item">캘린더</a>
                        </div>
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i
                                class="fa fa-laptop me-2"></i>입/지출</a>
                        <a href="#" class="nav-item nav-link"><i class="fa fa-th me-2"></i>내
                            자산</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle active" data-bs-toggle="dropdown"><i
                                    class="fa fa-chart-bar me-2"></i>보고서</a>
                            <div class="dropdown-menu bg-transparent border-0">
                                <a href="#" class="dropdown-item">보고서</a> <a href="#" class="dropdown-item">소비현황</a> <a
                                    href="#" class="dropdown-item">통계</a>
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
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0">
                        <i class="fa fa-user-edit"></i>
                    </h2>
                </a> <a href="#" class="sidebar-toggler flex-shrink-0"> <i class="fa fa-bars"></i>
                </a>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <!--  <button type="button" class="btn btn-primary m-2"><a href="signin.html" style="color: white;">로그인</a></button> -->
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"> <img
                                class="rounded-circle me-lg-2" src="img/user.jpg" alt=""
                                style="width: 40px; height: 40px;"> <span class="d-none d-lg-inline-flex">로그인한 아이디가
                                보여지는공간</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">마이페이지</a> <a href="#" class="dropdown-item">마이페이지 수정</a>
                            <a href="index.html" class="dropdown-item">로그아웃</a>
                        </div>


                    </div>
                </div>
            </nav>
            <!-- Navbar End -->


            <!-- 항목별 지출 순위 (월 누적 데이터)  Start-->
            <div class="container-fluid pt-4 px-4">
                <div class="col-sm-12 col-xl-13 text-center p-4">
                    <div class="row g-4 bg-secondary rounded">


                        <h2 style="text-align: left; margin-top: 20px; margin-bottom: 0px; display: inline;">항목별 지출 순위 </h2>
                        

                        <!-- Chart Start -->
                        <div class="col-sm-12 col-xl-5" style=" margin-left: 200px;">

                            <!--  @type {CanvasRenderingContext2D}   -->
                            <canvas id="pie-chart"
                                style="display: inline;  box-sizing: content-box; flex-grow: 0;"></canvas>

                        </div>
                        <!-- Chart End -->

                        <!-- 막대 Start -->
                        <div class="col-xl-3" style="padding: 10px; margin-left: 200px;">

                            <div class="pg-bar mb-5">
                                <h4>저축/보험</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped" role="progressbar"
                                        aria-valuenow="33.2" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="pg-bar mb-5">
                                <h4>식비</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-success" role="progressbar"
                                        aria-valuenow="28.1" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="pg-bar mb-5">
                                <h4>공과금</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-info" role="progressbar"
                                        aria-valuenow="13.2" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <div class="pg-bar mb-5">
                                <h4>생필품</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-warning" role="progressbar"
                                        aria-valuenow="11.6" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                            <div class="pg-bar mb-5">
                                <h4>품위유지비</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-danger" role="progressbar"
                                        aria-valuenow="8.4" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                            <div class="pg-bar mb-5">
                                <h4>교통비</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-danger" role="progressbar"
                                        aria-valuenow="3.2" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                            <div class="pg-bar mb-0">
                                <h4>기타</h4>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-striped bg-danger" role="progressbar"
                                        aria-valuenow="2.3" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>

                        </div>

                        <!-- 막대 End -->
                    </div>
                </div>
            </div>
            <!-- 항목별 지출 순위 (월 누적 데이터) End -->

            <!-- 항목별 상세  Start-->
            <div class="col-sm-12 col-xl-12">
                <div class="bg-secondary rounded h-100 p-4">
                    <h6 class="mb-4">항목별 상세</h6>
                    <div class="accordion" id="accordionExample">
                        <!-- 항목별 상세  Start-->

                        <div class="accordion-item bg-transparent">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    전체 항목
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">

                                    <div class="col-sm-12 col-xl-12">
                                        <div class="bg-secondary rounded h-100 p-4" style="height: 50px;">
                                           
                                            <canvas id="line-chart1"></canvas>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-white">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Invoice</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Amount</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-transparent">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    저축/보험
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">

                                    <div class="col-sm-12 col-xl-12">
                                        <div class="bg-secondary rounded h-100 p-4" style="height: 50px;">
                                            
                                            <canvas id="line-chart2"></canvas>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-white">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Invoice</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Amount</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-transparent">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    식비
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">

                                    <div class="col-sm-12 col-xl-12">
                                        <div class="bg-secondary rounded h-100 p-4" style="height: 50px;">
                                           
                                            <canvas id="line-chart3"></canvas>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-white">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Invoice</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Amount</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-transparent">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    공과금
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">

                                    <div class="col-sm-12 col-xl-12">
                                        <div class="bg-secondary rounded h-100 p-4" style="height: 50px;">
                                           
                                            <canvas id="line-chart4"></canvas>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-white">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Invoice</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Amount</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-transparent">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    생필품
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">

                                    <div class="col-sm-12 col-xl-12">
                                        <div class="bg-secondary rounded h-100 p-4" style="height: 50px;">
                                            
                                            <canvas id="line-chart5"></canvas>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-white">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Invoice</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Amount</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-transparent">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    품위 유지비
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">

                                    <div class="col-sm-12 col-xl-12">
                                        <div class="bg-secondary rounded h-100 p-4" style="height: 50px;">
                                            
                                            <canvas id="line-chart6"></canvas>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-white">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Invoice</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Amount</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-transparent">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    교통비
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">

                                    <div class="col-sm-12 col-xl-12">
                                        <div class="bg-secondary rounded h-100 p-4" style="height: 50px;">
                                           
                                            <canvas id="line-chart7"></canvas>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-white">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Invoice</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Amount</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-transparent">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    기타
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">

                                    <div class="col-sm-12 col-xl-12">
                                        <div class="bg-secondary rounded h-100 p-4" style="height: 50px;">
                                            
                                            <canvas id="line-chart8"></canvas>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-white">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Invoice</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Amount</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>

                        <div class="accordion-item bg-transparent">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    목표
                                </button>
                            </h2>

                            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                                data-bs-parent="#accordionExample">
                                <div class="accordion-body">

                                    <div class="col-sm-12 col-xl-12">
                                        <div class="bg-secondary rounded h-100 p-4" style="height: 50px;">
                                            
                                            <canvas id="line-chart9"></canvas>
                                        </div>
                                    </div>

                                    <div class="table-responsive">
                                        <table class="table text-start align-middle table-bordered table-hover mb-0">
                                            <thead>
                                                <tr class="text-white">
                                                    <th scope="col"><input class="form-check-input" type="checkbox">
                                                    </th>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Invoice</th>
                                                    <th scope="col">Customer</th>
                                                    <th scope="col">Amount</th>
                                                    <th scope="col">Status</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                                <tr>
                                                    <td><input class="form-check-input" type="checkbox"></td>
                                                    <td>01 Jan 2045</td>
                                                    <td>INV-0123</td>
                                                    <td>Jhon Doe</td>
                                                    <td>$123</td>
                                                    <td>Paid</td>
                                                    <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>


                                </div>
                            </div>
                        </div>




                    </div>
                </div>
            </div>
            <!-- 항목별 상세  End-->


        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

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
        /** @type {CanvasRenderingContext2D} */
        // Pie Chart
        var ctx = $("#pie-chart").get(0).getContext("2d");
        var pie_chart = new Chart(ctx, {
            type: "pie",
            data: {
                labels: ["저축/보험", "식비", "공과금", "생필품", "품위유지비", "교통비", "기타"],
                datasets: [{
                    backgroundColor: [
                        "rgba(235, 22, 22, .7)",
                        "rgba(235, 22, 22, .6)",
                        "rgba(235, 22, 22, .5)",
                        "rgba(235, 22, 22, .4)",
                        "rgba(235, 22, 22, .3)",
                        "rgba(235, 22, 22, .2)",
                        "rgba(235, 22, 22, .1)",
                    ],
                    data: [33.2, 28.1, 13.2, 11.6, 8.4, 3.2, 2.3]
                }]
            },
            options: {
                responsive: true
            }
        });

        // Single Line Chart
        var ctx3 = $("#line-chart1").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });

        // Single Line Chart
        var ctx3 = $("#line-chart2").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });
        // Single Line Chart
        var ctx3 = $("#line-chart3").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });

        // Single Line Chart
        var ctx3 = $("#line-chart4").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });

        // Single Line Chart
        var ctx3 = $("#line-chart5").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });

        // Single Line Chart
        var ctx3 = $("#line-chart6").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });

        // Single Line Chart
        var ctx3 = $("#line-chart7").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });

        // Single Line Chart
        var ctx3 = $("#line-chart8").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });

        // Single Line Chart
        var ctx3 = $("#line-chart9").get(0).getContext("2d");
        var myChart3 = new Chart(ctx3, {
            type: "line",
            data: {
                labels: [50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150],
                datasets: [{
                    label: "Salse",
                    fill: false,
                    backgroundColor: "rgba(235, 22, 22, .7)",
                    data: [7, 8, 8, 9, 9, 9, 10, 11, 14, 14, 15]
                }]
            },
            options: {
                responsive: true
            }
        });



    </script>


</body>

</html>