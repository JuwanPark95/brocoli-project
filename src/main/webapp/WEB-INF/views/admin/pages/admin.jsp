<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>어드민 메인 페이지</title>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css"/>

</head>

<body>

	<%@ include file="header.jsp"%>
	<!-- ================================================================ -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">

		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content ">
					<!-- ============================================================== -->
					<!-- pageheader  -->
					<!-- ============================================================== -->
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h2 class="pageheader-title">
									<input type="text" name="con_Writer" value="${loginUser.mName}" readonly="readonly" style="height:35px; width:100%; border:none; background-color: #efeff6;">
								</h2>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item"><a href="#"
												class="breadcrumb-link">BROCOLI</a></li>
											<li class="breadcrumb-item active" aria-current="page">홈</li>
										</ol>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end pageheader  -->
					<!-- ============================================================== -->
					<div class="ecommerce-widget">

						<div class="row">
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="card">
									<div class="card-body">
										<h4 class="text-muted"><strong>총 회원수</strong></h4>
										<div class="metric-value d-inline-block">
											<h1 class="mb-1">${memberCount} 명</h1>
										</div>
										<div
											class="metric-label d-inline-block float-right text-success font-weight-bold">
											<span><i class="fa fa-fw fa-arrow-up"></i></span><span></span>
										</div>
									</div>
									<div id="sparkline-revenue"></div>
								</div>
							</div>
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="card">
									<div class="card-body">
										<h4 class="text-muted"><strong>총 브랜드수</strong></h4>
										<div class="metric-value d-inline-block">
											<h1 class="mb-1">${brandCount } 개</h1>
										</div>
										<div
											class="metric-label d-inline-block float-right text-success font-weight-bold">
											<span><i class="fa fa-fw fa-arrow-up"></i></span><span></span>
										</div>
									</div>
									<div id="sparkline-revenue2"></div>
								</div>
							</div>
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="card">
									<div class="card-body">
										<h4 class="text-muted"><strong>총 주문수</strong></h4>
										<div class="metric-value d-inline-block">
											<h1 class="mb-1">${orderCount } 건</h1>
										</div>
										<div
											class="metric-label d-inline-block float-right text-primary font-weight-bold">
											<span><i class="fa fa-fw fa-arrow-up"></i></span>
										</div>
									</div>
									<div id="sparkline-revenue3"></div>
								</div>
							</div>
							<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="card">
									<div class="card-body">
										<h4 class="text-muted"><strong>총 매출</strong></h4>
										<div class="metric-value d-inline-block">
											<h1 class="mb-1">${sales } 원</h1>
										</div>
										<div
											class="metric-label d-inline-block float-right text-secondary font-weight-bold">
											<span><i class="fa fa-fw fa-arrow-up"></i></span>
										</div>
									</div>
									<div id="sparkline-revenue4"></div>
								</div>
							</div>
						</div>
						<div class="row">
						<!-- ============================================================== -->

						<!-- ============================================================== -->
						<!-- ============================================================== -->
						<!-- 회원 성별 비율  -->
						<!-- ============================================================== -->
						<div class="col-xl-5 col-lg-5 col-md-12 col-sm-12 col-12">
							<div class="card">
								<h5 class="card-header"><strong>회원 성별 비율</strong></h5>
								<div class="card-body">
									<div id="c3chart_category1"></div>
								</div>
							</div>
						</div>
						
						<!-- ============================================================== -->
						<!-- 연도별 매출  -->
						<!-- ============================================================== -->
							<div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12">
								<div class="card">
									<h5 class="card-header"><strong>연도별 매출</strong></h5>
									<div class="card-body">
										<div id="morris_totalrevenue"></div>
									</div>
									<div class="card-footer">
										<p class="display-7 font-weight-bold">
											<span class="text-primary d-inline-block">$26,000</span><span
												class="text-success float-right">+9.45%</span>
										</p>
									</div>
								</div>
							</div>
							
						<!-- ============================================================== -->
						<!-- recent orders  -->
						<!-- ============================================================== -->
						<div class="col-xl-9 col-lg-12 col-md-6 col-sm-12 col-12">
							<div class="card">
								<h5 class="card-header">브랜드 NEW 5</h5>
								<div class="card-body p-0">
									<div class="table-responsive">
										<table class="table"  style="text-align: center;">
											<thead class="bg-light">
												<tr class="border-0">
	                                                <th style="width:5%">번호</th>
	                                                <th style="width:5%">로고</th>
	                                                <th>브랜드명</th>
	                                                <th>사업자번호</th>
	                                                <th>대표</th>
	                                                <th>주소</th>
	                                                <th>전화번호</th>
	                                                <th>입점일</th>
	                                                <th>입점상태</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="b" items="${BrandList}">
												<tr>
	                                                <td>${b.brand_NO}</td>
	                                                <td><img src="/brocoli/resources/brandLogo/${b.b_Logo_ReName}" width="50" height="50"></td>                                              	
	                                                <td>${b.b_Name}</td>
	                                                <td>${b.b_Business_NO}</td>
	                                                <td>${b.b_Owner_Name }</td>
	                                                <td>${b.b_Address }</td>
	                                                <td>${b.b_Phone }</td>
	                                                <td>${b.b_Enter_Date }</td>
	                                                <td>
                                                	<c:set var="b_Status" value="${b.b_Status}" />
                                            			<c:choose>
                                            			<c:when test="${b_Status eq 'Y'}">
                                            				<strong><span style="color:#4865CD;">O</span></strong>
                                            			</c:when>
                                            			<c:when test="${b_Status eq 'N'}">
                                            				<strong><span style="color:tomato;">X</span></strong>
                                            			</c:when>
                                             			</c:choose>
                                           			</td>
                                           		</tr>
                                      			 </c:forEach>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- ============================================================== -->
						<!-- end recent orders  -->
						<div class="col-xl-3 col-lg-12 col-md-6 col-sm-12 col-12">
							<!-- ============================================================== -->
							<!-- top perfomimg  -->
							<!-- ============================================================== -->
							<div class="card">
								<h5 class="card-header">회원가입 NEW 6</h5>
								<div class="card-body p-0">
									<div class="table-responsive">
										<table class="table no-wrap p-table">
											<thead class="bg-light">
												<tr class="border-0">
													<th class="border-0">Campaign</th>
													<th class="border-0">Visits</th>
													<th class="border-0">Revenue</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Campaign#1</td>
													<td>98,789</td>
													<td>$4563</td>
												</tr>
												<tr>
													<td>Campaign#2</td>
													<td>2,789</td>
													<td>$325</td>
												</tr>
												<tr>
													<td>Campaign#3</td>
													<td>1,459</td>
													<td>$225</td>
												</tr>
												<tr>
													<td>Campaign#4</td>
													<td>5,035</td>
													<td>$856</td>
												</tr>
												<tr>
													<td>Campaign#5</td>
													<td>10,000</td>
													<td>$1000</td>
												</tr>
												<tr>
													<td>Campaign#5</td>
													<td>10,000</td>
													<td>$1000</td>
												</tr>
												<tr>
													<td colspan="3"><a href="#"
														class="btn btn-outline-light float-right">Details</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- ============================================================== -->
							<!-- end top perfomimg  -->
							<!-- ============================================================== -->
						</div>

						<!-- ============================================================== -->
						<!-- ============================================================== -->
						<!-- customer acquistion  -->
						<!-- ============================================================== -->
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
							<div class="card">
								<h5 class="card-header">Customer Acquisition</h5>
								<div class="card-body">
									<div class="ct-chart ct-golden-section" style="height: 354px;"></div>
									<div class="text-center">
										<span class="legend-item mr-2"> <span
											class="fa-xs text-primary mr-1 legend-tile"><i
												class="fa fa-fw fa-square-full"></i></span> <span
											class="legend-text">Returning</span>
										</span> <span class="legend-item mr-2"> <span
											class="fa-xs text-secondary mr-1 legend-tile"><i
												class="fa fa-fw fa-square-full"></i></span> <span
											class="legend-text">First Time</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<!-- ============================================================== -->
						<!-- end customer acquistion  -->
						<!-- ============================================================== -->
					</div>
					<div class="row">
						<!-- ============================================================== -->
						<!-- product category  -->
						<!-- ============================================================== -->
						<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
							<div class="card">
								<h5 class="card-header">Product Category</h5>
								<div class="card-body">
									<div class="ct-chart-category ct-golden-section"
										style="height: 315px;"></div>
									<div class="text-center m-t-40">
										<span class="legend-item mr-3"> <span
											class="fa-xs text-primary mr-1 legend-tile"><i
												class="fa fa-fw fa-square-full "></i></span><span
											class="legend-text">Man</span>
										</span> <span class="legend-item mr-3"> <span
											class="fa-xs text-secondary mr-1 legend-tile"><i
												class="fa fa-fw fa-square-full"></i></span> <span
											class="legend-text">Woman</span>
										</span> <span class="legend-item mr-3"> <span
											class="fa-xs text-info mr-1 legend-tile"><i
												class="fa fa-fw fa-square-full"></i></span> <span
											class="legend-text">Accessories</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<!-- ============================================================== -->
						<!-- end product category  -->
						<!-- product sales  -->
						<!-- ============================================================== -->
						<div class="col-xl-6 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="card">
								<div class="card-header">
									<!-- <div class="float-right">
                                               <select class="custom-select">
                                                   <option selected>Today</option>
                                                   <option value="1">Weekly</option>
                                                   <option value="2">Monthly</option>
                                                   <option value="3">Yearly</option>
                                               </select>
                                           </div> -->
									<h5 class="mb-0">Product Sales</h5>
								</div>
								<div class="card-body">
									<div class="ct-chart-product ct-golden-section"></div>
								</div>
							</div>
						</div>
						<!-- ============================================================== -->
						<!-- end product sales  -->
						<!-- ============================================================== -->
						<div class="col-xl-3 col-lg-12 col-md-6 col-sm-12 col-12">
							<!-- ============================================================== -->
							<!-- top perfomimg  -->
							<!-- ============================================================== -->
							<div class="card">
								<h5 class="card-header">Top Performing Campaigns</h5>
								<div class="card-body p-0">
									<div class="table-responsive">
										<table class="table no-wrap p-table">
											<thead class="bg-light">
												<tr class="border-0">
													<th class="border-0">Campaign</th>
													<th class="border-0">Visits</th>
													<th class="border-0">Revenue</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Campaign#1</td>
													<td>98,789</td>
													<td>$4563</td>
												</tr>
												<tr>
													<td>Campaign#2</td>
													<td>2,789</td>
													<td>$325</td>
												</tr>
												<tr>
													<td>Campaign#3</td>
													<td>1,459</td>
													<td>$225</td>
												</tr>
												<tr>
													<td>Campaign#4</td>
													<td>5,035</td>
													<td>$856</td>
												</tr>
												<tr>
													<td>Campaign#5</td>
													<td>10,000</td>
													<td>$1000</td>
												</tr>
												<tr>
													<td>Campaign#5</td>
													<td>10,000</td>
													<td>$1000</td>
												</tr>
												<tr>
													<td colspan="3"><a href="#"
														class="btn btn-outline-light float-right">Details</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- ============================================================== -->
							<!-- end top perfomimg  -->
							<!-- ============================================================== -->
						</div>
					</div>

					
						
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ============================================================== -->
		<!-- end wrapper  -->
		<!-- ============================================================== -->

		<!-- ============================================================== -->
		<!-- 회원 성별 비율 -->
		<!-- ============================================================== -->
		<script>
			$(function(){
				 var chart = c3.generate({
			        bindto: "#c3chart_category1",
			        data: {
			            columns: [
			                ['Men', 100],
			                ['Women', 80]
			            ],
			            type: 'donut',

			            onclick: function(d, i) { console.log("onclick", d, i); },
			            onmouseover: function(d, i) { console.log("onmouseover", d, i); },
			            onmouseout: function(d, i) { console.log("onmouseout", d, i); },

			            colors: {
			                Men: '#5969ff',
			                Women: '#ff407b'
			            }
			        },
			        donut: {
			            label: {
			                show: false
			            }
			        }
				});
			});
			   
		</script>
		
		<!-- ============================================================== -->
		<!-- 연도별 매출 -->
		<!-- ============================================================== -->
		<script>
			$(function(){
			    Morris.Area({
			        element: 'morris_totalrevenue',
			        behaveLikeLine: true,
			        data: [
			            { x: '2016 Q1', y: 0, },
			            { x: '2016 Q2', y: 7500, },
			            { x: '2017 Q3', y: 15000, },
			            { x: '2017 Q4', y: 22500, },
			            { x: '2018 Q5', y: 30000, },
			            { x: '2018 Q6', y: 40000, }
			        ],
			        xkey: 'x',
			        ykeys: ['y'],
			        labels: ['Y'],
			        lineColors: ['#5969ff'],
			        resize: true
			
			    });
			});
		</script>
		<!-- ============================================================== -->
		<!-- end main wrapper  -->
		<!-- ============================================================== -->
		<!-- Optional JavaScript -->
		<!-- slimscroll js -->
		
		
		<script src="https://d3js.org/d3.v3.min.js"></script>     
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
		<script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
		<!-- main js -->
		<script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
		<!-- chart chartist js -->
		<script src="/brocoli/resources/adminResources/vendor/charts/chartist-bundle/chartist.min.js"></script>
		<!-- sparkline js -->
		<script src="/brocoli/resources/adminResources/vendor/charts/sparkline/jquery.sparkline.js"></script>
		<!-- morris js -->
		<script src="/brocoli/resources/adminResources/vendor/charts/morris-bundle/raphael.min.js"></script>
		<script src="/brocoli/resources/adminResources/vendor/charts/morris-bundle/morris.js"></script>
		<!-- chart c3 js -->
		<script src="/brocoli/resources/adminResources/vendor/charts/c3charts/c3.min.js"></script>
		<script src="/brocoli/resources/adminResources/vendor/charts/c3charts/d3-5.4.0.min.js"></script>
		<script src="/brocoli/resources/adminResources/vendor/charts/c3charts/C3chartjs.js"></script>
		<script src="/brocoli/resources/adminResources/libs/js/dashboard-ecommerce.js"></script>
</body>

</html>