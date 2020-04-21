<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/ownerResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <%@ include file="header.jsp" %>
        
    <title>오너 : 후기관리</title>
    
    <style type="text/css">
    	.dataTables_length{
    		display: none;
    	}
    	#DataTables_Table_0_filter{
    		float: right;
    	}
    	.dataTables_info{
    		display: none;
    	}
    	.pagination{
    		float: right;
    		margin-top: 10px;
    	}
    	.table-responsive{
    		overflow-x: hidden;
    	}
    	.table-bordered td, .table-bordered th{
    	    background-color: #fff;
    	}
    	.card-body{
    		padding: 0px;
    	}
    	.btn-primary:not(:disabled):not(.disabled).active{
   		    color: #fff;
		    background-color: #23253a;
		    border-color: #161826;
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
			<div class="influence-profile">
				<div class="container-fluid dashboard-content ">
					<!-- ============================================================== -->
					<!-- pageheader -->
					<!-- ============================================================== -->
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h3 class="mb-2">읽지않은 후기</h3>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="#"
												class="breadcrumb-link">메뉴</a></li>
											<li class="breadcrumb-item active" aria-current="page">후기관리</li>
											<li class="breadcrumb-item active" aria-current="page">읽지않은
												후기</li>
										</ol>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end pageheader -->
					<!-- ============================================================== -->
					<div class="card" style="padding-top: 13px;">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="card-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered first">
										<thead style="display: none;">
											<tr>
												<th style="width: 100%;">Name</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="card-body">
														<div class="review-block" style="padding: 8px;">

															<div class="m-r-10" style="margin-bottom: 10px;">
																<img src="/brocoli/resources/product-Img/P11001.jpg"
																	alt="user" class="rounded" width="150"> 
																<img src="/brocoli/resources/product-Img/P11001.jpg"
																	alt="user" class="rounded" width="150">
															</div>
																<textarea style=" width: 80%; height: auto; background-color: none; border: none; text-align: left;
																padding: 8px; " class="review-text font-italic m-0" rows="" cols=""
																>배고파여 ㅎㅎ 떡볶이 먹고싶당 </textarea>
															<div class="rating-star">
																<i class="fa fa-fw fa-star"></i> 
																<i class="fa fa-fw fa-star"></i> 
																<i class="fa fa-fw fa-star"></i> 
																<i class="fa fa-fw fa-star"></i> 
																<i class="fa fa-fw fa-star"></i>
															</div>
															<span class="text-dark font-weight-bold">홍길동이</span><small class="text-mute"> 2020-04-02 15:12</small>
															<div style="display: flex;">
																<textarea
																	style="width: 90%; margin-top: 10px; border-radius: 5px;"></textarea>
																<a href="#" class="btn btn-primary active"
																	style="height: 41px; margin-top: 13px; margin-left: 5px;">작성</a>
															</div>
														</div>
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="card-body">
														<div class="review-block">

															<div class="m-r-10" style="margin: 8px;">
																<img src="/brocoli/resources/product-Img/P11001.jpg"
																	alt="user" class="rounded" width="45"> <img
																	src="/brocoli/resources/product-Img/P11001.jpg"
																	alt="user" class="rounded" width="45">
															</div>
															<p class="review-text font-italic m-0">배고파여 떡볶이 먹고싶당
																ㅎㅎ</p>
															<div class="rating-star mb-4">
																<i class="fa fa-fw fa-star"></i> <i
																	class="fa fa-fw fa-star"></i> <i
																	class="fa fa-fw fa-star"></i> <i
																	class="fa fa-fw fa-star"></i> <i
																	class="fa fa-fw fa-star"></i>
															</div>
															<span class="text-dark font-weight-bold">홍길동이</span><small class="text-mute"> 2020-04-02 15:12</small>
														</div>
														<div style="display: flex;">
															<textarea
																style="width: 90%; margin-top: 10px; border-radius: 5px;"></textarea>
															<a href="#" class="btn btn-primary active"
																style="height: 41px; margin-top: 13px; margin-left: 5px;">작성</a>
														</div>
													</div>
												</td>
											</tr>

										</tbody>
										<tfoot style="display: none;">
											<tr>
												<th>Name</th>

											</tr>
										</tfoot>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<script
			src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
		<script
			src="/brocoli/resources/ownerResources/vendor/multi-select/js/jquery.multi-select.js"></script>
		<script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
		<script
			src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
		<script
			src="/brocoli/resources/ownerResources/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
		<script
			src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
		<script
			src="/brocoli/resources/ownerResources/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
		<script
			src="/brocoli/resources/ownerResources/vendor/datatables/js/data-table.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
		<script
			src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
		<script
			src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
		<script
			src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
		<script
			src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
		<script
			src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
		<script
			src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
</body>
 
</html>