<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">


<!-- 
	작성자 : 박주완
	작성일 : 2020-03-20 
	내용    : 상품등록 
-->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>오너 : 매거진등록</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="/brocoli/resources/ownerResources/vendor/bootstrap/css/bootstrap.min.css">
<link
	href="/brocoli/resources/ownerResources/vendor/fonts/circular-std/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="/brocoli/resources/ownerResources/libs/css/style.css">
<link rel="stylesheet"
	href="/brocoli/resources/ownerResources/vendor/fonts/fontawesome/css/fontawesome-all.css">

    <%@ include file="header.jsp" %>

<style type="text/css">
.btn-secondary {
	color: #fff;
	background-color: #ff407b;
	border-color: #ff407b;
}
</style>
</head>

<body>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">


		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="container-fluid  dashboard-content">
				<!-- ============================================================== -->
				<!-- pageheader -->
				<!-- ============================================================== -->
				<div class="row">
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="page-header">
							<h2 class="pageheader-title">매거진등록</h2>
							<p class="pageheader-text">Proin placerat ante duiullam
								scelerisque a velit ac porta, fusce sit amet vestibulum mi.
								Morbi lobortis pulvinar quam.</p>
							<div class="page-breadcrumb">
								<nav aria-label="breadcrumb">
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="#"
											class="breadcrumb-link">메뉴</a></li>
										<li class="breadcrumb-item"><a href="#"
											class="breadcrumb-link">매거진</a></li>
										<li class="breadcrumb-item active" aria-current="page">매거진등록</li>
									</ol>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<!-- ============================================================== -->
				<!-- end pageheader -->
				<!-- ============================================================== -->


				<div class="row">
					<!-- ============================================================== -->
					<!-- valifation types -->
					<!-- ============================================================== -->
					<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
						<div class="card">
							<h5 class="card-header">상품등록</h5>
							<div class="card-body">
								<form id="validationform" data-parsley-validate="" novalidate="">

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리
										</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<select id="big-category" name="big=category"
												class="btn btn-secondary dropdown-toggle"
												style="height: 38px; background-color: #e6e6f2; color: black; border-color: #e6e6f2;">
												<option value="" selected="selected">선택</option>
												<option value="1">뉴스</option>
												<option value="2">룩북</option>
												<option value="3">신상품</option>
												<option value="4">세일</option>
											</select>
										</div>
									</div>

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">제목</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input type="text" required="" data-parsley-minlength="6"
												placeholder="제목을 입력해주세요" class="form-control">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">내용</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<textarea rows="10" required="" class="form-control"></textarea>
										</div>
									</div>
									
									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">태그</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<input type="text" required="" data-parsley-minlength="6"
												placeholder="태그입력" class="form-control">
										</div>
									</div>

									<div class="form-group row">
										<label class="col-12 col-sm-3 col-form-label text-sm-right">이미지
											등록</label>
										<div class="col-12 col-sm-8 col-lg-6">
											<img src="http://via.placeholder.com/150x150"
												class="img-thumbnail mr-3" alt="Responsive image"> <img
												src="http://via.placeholder.com/150x150"
												class="img-thumbnail mr-3" alt="Responsive image"> <img
												src="http://via.placeholder.com/150x150"
												class="img-thumbnail mr-3" alt="Responsive image"> <img
												src="http://via.placeholder.com/150x150"
												class="img-thumbnail mr-3" alt="Responsive image"> <img
												src="http://via.placeholder.com/150x150"
												class="img-thumbnail mr-3" alt="Responsive image"> <img
												src="http://via.placeholder.com/150x150"
												class="img-thumbnail mr-3" alt="Responsive image">
										</div>
									</div>





									<div class="form-group row text-right">
										<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
											<button type="submit" class="btn btn-space btn-primary">등록</button>
											<button class="btn btn-space btn-secondary">취소</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end valifation types -->
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
		src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
	<script
		src="/brocoli/resources/ownerResources/vendor/parsley/parsley.js"></script>
	<script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
	<script>
    $('#form').parsley();
    </script>


</body>

</html>