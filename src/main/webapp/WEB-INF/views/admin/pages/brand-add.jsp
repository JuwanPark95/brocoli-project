<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Concept - Bootstrap 4 Admin Dashboard Template</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/vendor/bootstrap/css/bootstrap.min.css">
<link
	href="/brocoli/resources/adminResources/vendor/fonts/circular-std/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/libs/css/style.css">
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/vendor/datepicker/tempusdominus-bootstrap-4.css" />
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/vendor/inputmask/css/inputmask.css" />
</head>

<body>
	<%@ include file="header.jsp"%>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">

		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="container-fluid dashboard-content">
				<div class="row">
					<div class="col-xl-10">
						<!-- ============================================================== -->
						<!-- pageheader  -->
						<!-- ============================================================== -->
						<div class="row">
							<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
								<div class="page-header" id="top">
									<h2 class="pageheader-title">브랜드 등록</h2>
									<p class="pageheader-text">Proin placerat ante duiullam
										scelerisque a velit ac porta, fusce sit amet vestibulum mi.
										Morbi lobortis pulvinar quam.</p>
									<div class="page-breadcrumb">
										<nav aria-label="breadcrumb">
											<ol class="breadcrumb">
												<li class="breadcrumb-item">가맹브랜드 관리</li>
												<li class="breadcrumb-item">가맹브랜드</li>
												<li class="breadcrumb-item active" aria-current="page">브랜드
													등록</li>
											</ol>
										</nav>
									</div>
								</div>
							</div>
						</div>
						<!-- ============================================================== -->
						<!-- end pageheader  -->
						<!-- ============================================================== -->
						<div class="page-section" id="overview">

							<!-- ============================================================== -->
							<!-- basic form  -->
							<!-- ============================================================== -->
							<div class="row">
								<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

									<div class="card">
										<h5 class="card-header">브랜드</h5>
										<div class="card-body">
											<form>
												<div class="form-group">
													<label for="inputText3" class="col-form-label">로고</label> <input
														id="inputText3" type="text" class="form-control">

												</div>
												<div class="form-group">
													<label for="inputText3" class="col-form-label">브랜드명</label>
													<input id="inputText3" type="text" class="form-control">
												</div>
												<div class="form-group">
													<label for="inputText3" class="col-form-label">사업자번호</label>
													<input id="inputText3" type="text" class="form-control">
												</div>
												<div class="form-group">
													<label for="inputText3" class="col-form-label">대표</label> <input
														id="inputText3" type="text" class="form-control">
												</div>
												<div class="form-group">
													<label for="inputText3" class="col-form-label">담당매니저</label>
													<input id="inputText3" type="text" class="form-control">
												</div>
												<div class="form-group">
													<label for="inputText3" class="col-form-label">주소</label> <input
														id="inputText3" type="text" class="form-control">
												</div>

												<div class="form-group">
													<label for="inputText3" class="col-form-label">전화번호</label>
													<input id="inputText3" type="text" class="form-control">
												</div>
												<div class="form-group">
													<label for="inputText3" class="col-form-label">이메일</label>
													<input id="inputText3" type="email" class="form-control">
												</div>

											</form>
										</div>
										<div class="card-body border-top">
											<div class="form-group row text-right">
                                           		 <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0" style="flex:100%; max-width: 100%;">
                                               		 <button type="submit" class="btn btn-dark">저장</button>
                                           		 </div>
                                       	    </div>
										</div>
									</div>
								</div>
							</div>
							<!-- ============================================================== -->
							<!-- end basic form  -->
							<!-- ============================================================== -->
						</div>
						<!-- ============================================================== -->
						<!-- end sidenavbar -->
						<!-- ============================================================== -->
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- end main wrapper -->
		<!-- ============================================================== -->
		<!-- Optional JavaScript -->

		<script
			src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
		<script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
		<script
			src="/brocoli/resources/adminResources/vendor/inputmask/js/jquery.inputmask.bundle.js"></script>
		<script>
    $(function(e) {
        "use strict";
        $(".date-inputmask").inputmask("dd/mm/yyyy"),
            $(".phone-inputmask").inputmask("(999) 999-9999"),
            $(".international-inputmask").inputmask("+9(999)999-9999"),
            $(".xphone-inputmask").inputmask("(999) 999-9999 / x999999"),
            $(".purchase-inputmask").inputmask("aaaa 9999-****"),
            $(".cc-inputmask").inputmask("9999 9999 9999 9999"),
            $(".ssn-inputmask").inputmask("999-99-9999"),
            $(".isbn-inputmask").inputmask("999-99-999-9999-9"),
            $(".currency-inputmask").inputmask("$9999"),
            $(".percentage-inputmask").inputmask("99%"),
            $(".decimal-inputmask").inputmask({
                alias: "decimal",
                radixPoint: "."
            }),

            $(".email-inputmask").inputmask({
                mask: "*{1,20}[.*{1,20}][.*{1,20}][.*{1,20}]@*{1,20}[*{2,6}][*{1,2}].*{1,}[.*{2,6}][.*{1,2}]",
                greedy: !1,
                onBeforePaste: function(n, a) {
                    return (e = e.toLowerCase()).replace("mailto:", "")
                },
                definitions: {
                    "*": {
                        validator: "[0-9A-Za-z!#$%&'*+/=?^_`{|}~/-]",
                        cardinality: 1,
                        casing: "lower"
                    }
                }
            })
    });
    </script>
</body>

</html>
