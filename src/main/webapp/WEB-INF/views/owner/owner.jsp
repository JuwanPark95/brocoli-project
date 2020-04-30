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
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/charts/morris-bundle/morris.css">
    <link rel="stylesheet" href="/brocoli/resources/ownerResources/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
    
    <%@ include file="pages/header.jsp" %>
    
    <title>오너 : 홈</title>
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
	        <div class="dashboard-influence">
	            <div class="container-fluid dashboard-content">
	                <!-- ============================================================== -->
	                <!-- pageheader  -->
	                <!-- ============================================================== -->
	                <div class="row">
	                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
	                        <div class="page-header">
	                            <h3 class="mb-2"><strong>홈 화면</strong></h3>
	                            <div class="page-breadcrumb">
	                                <nav aria-label="breadcrumb">
	                                    <ol class="breadcrumb">
	                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
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
	                <!-- ============================================================== -->
	                <!-- content  -->
	                <!-- ============================================================== -->
	                <!-- ============================================================== -->
	                <!-- influencer profile  -->
	                <!-- ============================================================== -->
	                <div class="row">
	                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
	                        <div class="card influencer-profile-data">
	                            <div class="card-body">
	                                <div class="row">
	                                    <div class="col-xl-2 col-lg-4 col-md-4 col-sm-4 col-12">
	                                        <div class="text-center">
	                                            <img id="brandLogo2" src="/brocoli/resources/images/DIM_E_CRES_LOGO.jpg" alt="User Avatar" class="rounded-circle user-avatar-xxl">
	                                            </div>
	                                        </div>
	                                        <div class="col-xl-10 col-lg-8 col-md-8 col-sm-8 col-12">
	                                            <div class="user-avatar-info">
	                                                <div class="m-b-20">
	                                                    <div class="user-avatar-name">
	                                                        <h2 class="mb-1"><strong id="brandName2">${loginUser.brand }</strong></h2>
	                                                    </div>
	                                                    <div class="rating-star  d-inline-block">
	                                                      
	                                                    </div>
	                                                </div>
	                                                <!--  <div class="float-right"><a href="#" class="user-avatar-email text-secondary">www.henrybarbara.com</a></div> -->
	                                                <div class="user-avatar-address">
	                                                    <p class="border-bottom pb-3">
	                                                        <span class="d-xl-inline-block d-block mb-2"><i class="fa fa-map-marker-alt mr-2 text-primary "></i><span id="brandAdress2"></span></span>
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block"><i class="fas fa-phone-volume" style="color: skyblue; font-size: 17px;"></i><span id="brandphone2"></span></span>
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block"><i class="fas fa-file-signature"></i> 입점일 : <span id="brandEnrollDate2"></span> </span>
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block"><i class="fas fa-user-tie"></i>대표 : <span id="brandBoss2"></span></span>
	                                                        <span class="mb-2 ml-xl-4 d-xl-inline-block d-block">박주완 </span>
	                                                    </p>
	                                                    <div class="mt-3" id="brandComment2">
	                                                    	브랜드설명
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="border-top user-social-box">
	                                    <div class="user-social-media d-xl-inline-block" style="padding:15px 43px; "><span class="mr-2 twitter-color"> <i class="fab fa-twitter-square"></i></span><span>담당 매니저 : 신은지</span></div>
	                                    <div class="user-social-media d-xl-inline-block" style="padding:15px 43px; "><span class="mr-2  pinterest-color"> <i class="fab fa-pinterest-square"></i></span><span>브랜드 : </span></div>
	                                    <div class="user-social-media d-xl-inline-block" style="padding:15px 43px; "><span class="mr-2 instagram-color"> <i class="fab fa-instagram"></i></span><span>박주완</span></div>
	                                    <div class="user-social-media d-xl-inline-block" style="padding:15px 43px; "><span class="mr-2  facebook-color"> <i class="fab fa-facebook-square "></i></span><span>박진아</span></div>
	                                    <div class="user-social-media d-xl-inline-block" style="padding:15px 43px; "><span class="mr-2 medium-color"> <i class="fab fa-medium"></i></span><span>매거진 : 291 개</span></div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <!-- ============================================================== -->
	                    <!-- end influencer profile  -->
	                    <!-- ============================================================== -->
	                    <!-- ============================================================== -->
	                    <!-- widgets   -->
	                    <!-- ============================================================== -->
	                    <div class="row">
	                        <!-- ============================================================== -->
	                        <!-- four widgets   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- total views   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <div class="card-body">
	                                    <div class="d-inline-block">
	                                        <h5 class="text-muted"><strong>5월 정산금액</strong></h5>
	                                        <h2 class="mb-0"> 10,28,056 원</h2>
	                                    </div>
	                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-info-light mt-1">
	                                        <i class="fa fa-eye fa-fw fa-sm text-info"></i>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end total views   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- total followers   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <div class="card-body">
	                                    <div class="d-inline-block">
	                                        <h5 class="text-muted"><strong>5월 매출</strong></h5>
	                                        <h2 class="mb-0"> 11,124,763 원</h2>
	                                    </div>
	                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-primary-light mt-1">
	                                        <i class="fa fa-user fa-fw fa-sm text-primary"></i>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end total followers   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- partnerships   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <div class="card-body">
	                                    <div class="d-inline-block">
	                                        <h5 class="text-muted"><strong>5월 총주문</strong></h5>
	                                        <h2 class="mb-0">521 건</h2>
	                                    </div>
	                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-secondary-light mt-1">
	                                        <i class="fa fa-handshake fa-fw fa-sm text-secondary"></i>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end partnerships   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- total earned   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <div class="card-body">
	                                    <div class="d-inline-block">
	                                        <h5 class="text-muted"><strong>교환/환불</strong></h5>
	                                        <h2 class="mb-0">21/12 건</h2>
	                                    </div>
	                                    <div class="float-right icon-circle-medium  icon-box-lg  bg-brand-light mt-1">
	                                        <i class="fa fa-money-bill-alt fa-fw fa-sm text-brand"></i>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end total earned   -->
	                        <!-- ============================================================== -->
	                    </div>
	                    <!-- ============================================================== -->
	                    <!-- end widgets   -->
	                    <!-- ============================================================== -->
	                    <div class="row">
	                        <!-- ============================================================== -->
	                        <!-- followers by gender   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <h5 class="card-header"><strong>주 고객층 성별통계</strong></h5>
	                                <div class="card-body">
	                                    <div id="gender_donut" style="height: 230px;"></div>
	                                </div>
	                                <div class="card-footer p-0 bg-white d-flex">
	                                    <div class="card-footer-item card-footer-item-bordered w-50">
	                                        <h2 class="mb-0"> 60% </h2>
	                                        <p>Female </p>
	                                    </div>
	                                    <div class="card-footer-item card-footer-item-bordered">
	                                        <h2 class="mb-0">40% </h2>
	                                        <p>Male </p>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end followers by gender  -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- followers by age   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <h5 class="card-header"><strong>고객 연령별 통계</strong></h5>
	                                <div class="card-body">
	                                    <div class="mb-3">
	                                        <div class="d-inline-block">
	                                            <h4 class="mb-0">15 - 20</h4>
	                                        </div>
	                                        <div class="progress mt-2 float-right progress-md">
	                                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 45%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
	                                        </div>
	                                    </div>
	                                    <div class="mb-3">
	                                        <div class="d-inline-block">
	                                            <h4 class="mb-0">20 - 25</h4>
	                                        </div>
	                                        <div class="progress mt-2 float-right progress-md">
	                                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 55%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
	                                        </div>
	                                    </div>
	                                    <div class="mb-3">
	                                        <div class="d-inline-block">
	                                            <h4 class="mb-0">25 - 30</h4>
	                                        </div>
	                                        <div class="progress mt-2 float-right progress-md">
	                                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 65%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
	                                        </div>
	                                    </div>
	                                    <div class="mb-3">
	                                        <div class="d-inline-block">
	                                            <h4 class="mb-0">30 - 35</h4>
	                                        </div>
	                                        <div class="progress mt-2 float-right progress-md">
	                                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 35%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
	                                        </div>
	                                    </div>
	                                    <div class="mb-3">
	                                        <div class="d-inline-block">
	                                            <h4 class="mb-0">35 - 40</h4>
	                                        </div>
	                                        <div class="progress mt-2 float-right progress-md">
	                                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 21%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
	                                        </div>
	                                    </div>
	                                    <div class="mb-3">
	                                        <div class="d-inline-block">
	                                            <h4 class="mb-0">45 - 50</h4>
	                                        </div>
	                                        <div class="progress mt-2 float-right progress-md">
	                                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 85%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
	                                        </div>
	                                    </div>
	                                    <div class="mb-3">
	                                        <div class="d-inline-block">
	                                            <h4 class="mb-0">50 - 55</h4>
	                                        </div>
	                                        <div class="progress mt-2 float-right progress-md">
	                                            <div class="progress-bar bg-secondary" role="progressbar" style="width: 25%;" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end followers by age   -->
	                        <!-- ============================================================== -->
	                        <!-- ============================================================== -->
	                        <!-- followers by locations   -->
	                        <!-- ============================================================== -->
	                        <div class="col-xl-5 col-lg-12 col-md-6 col-sm-12 col-12">
	                            <div class="card">
	                                <h5 class="card-header"><strong>카테고리별 판매율</strong></h5>
	                                <div class="card-body">
	                                    <canvas id="chartjs_bar_horizontal"></canvas>
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end followers by locations  -->
	                        <!-- ============================================================== -->
	                    </div>
	                    <div class="row">
	                                      <!-- recent orders  -->
                            <!-- ============================================================== -->
                           				
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="card">
                                    <h5 class="card-header"><strong>이번달 판매제품 순위</strong></h5>
                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class="bg-light">
                                                    <tr class="border-0">
                                                        <th class="border-0"><strong>총주문수</strong></th>
                                                        <th class="border-0"><strong>상품번호</strong></th>
                                                        <th class="border-0"><strong>기준월</strong></th>
                                                        <th class="border-0"><strong>이미지</strong></th>
                                                        <th class="border-0"><strong>상품명</strong></th>
                                                        <th class="border-0"><strong>가격</strong></th>
                                                        <th class="border-0"><strong>카테고리 대</strong></th>
                                                        <th class="border-0"><strong>카테고리 소</strong></th>
                                                        <th class="border-0"><strong>등록일</strong></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="/brocoli/resources/ownerResources/images/product-pic.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #1 </td>
                                                        <td>id000001 </td>
                                                        <td>20</td>
                                                        <td>$80.00</td>
                                                        <td>27-08-2018 01:22:12</td>
                                                        <td>Patricia J. King </td>
                                                        <td><span class="badge-dot badge-brand mr-1"></span>InTransit </td>
                                                    </tr>
                                                    <!-- <tr>
                                                        <td>2</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="/brocoli/resources/ownerResources/images/product-pic-2.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #2 </td>
                                                        <td>id000002 </td>
                                                        <td>12</td>
                                                        <td>$180.00</td>
                                                        <td>25-08-2018 21:12:56</td>
                                                        <td>Rachel J. Wicker </td>
                                                        <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="/brocoli/resources/ownerResources/images/product-pic-3.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #3 </td>
                                                        <td>id000003 </td>
                                                        <td>23</td>
                                                        <td>$820.00</td>
                                                        <td>24-08-2018 14:12:77</td>
                                                        <td>Michael K. Ledford </td>
                                                        <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                    </tr>
                                                    <tr>
                                                        <td>4</td>
                                                        <td>
                                                            <div class="m-r-10"><img src="/brocoli/resources/ownerResources/images/product-pic-4.jpg" alt="user" class="rounded" width="45"></div>
                                                        </td>
                                                        <td>Product #4 </td>
                                                        <td>id000004 </td>
                                                        <td>34</td>
                                                        <td>$340.00</td>
                                                        <td>23-08-2018 09:12:35</td>
                                                        <td>Michael K. Ledford </td>
                                                        <td><span class="badge-dot badge-success mr-1"></span>Delivered </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="9"><a href="#" class="btn btn-outline-light float-right">View Details</a></td>
                                                    </tr> -->
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- ============================================================== -->
                            <!-- end recent orders  -->
	                        
	                    </div>
	                    <!-- ============================================================== -->
	                    <!-- recommended campaigns   -->
	                    <!-- ============================================================== -->
	                    
	                    <div class="row">
	                        <div class="col-lg-12">
	                            <div class="section-block">
	                                <h3 class="section-title"><strong>최근리뷰</strong></h3>
	                            </div>
	                        </div>
	                        	
	                        	
	                        	<div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                            <div class="card campaign-card text-center">
	                                <div class="card-body">
	                                    <div class="campaign-img"><img src="/brocoli/resources/ownerResources/images/dribbble.png" alt="user" class="user-avatar-xl"></div>
	                                        <div class="campaign-info">
	                                            <h3 class="mb-1">Campaigns Name</h3>
	                                            <p class="mb-3">Vestibulum porttitor laoreet faucibus.</p>
	                                            <p class="mb-1">Min, Views:<span class="text-dark font-medium ml-2">2,50,000</span></p>
	                                            <p>Payout: <span class="text-dark font-medium ml-2">$22</span></p>
	                                            <a href="#"><i class="fab fa-twitter-square fa-sm twitter-color"></i> </a><a href="#"><i class="fab fa-snapchat-square fa-sm snapchat-color"></i></a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
	                            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                                <div class="card campaign-card text-center">
	                                    <div class="card-body">
	                                        <div class="campaign-img"><img src="/brocoli/resources/ownerResources/images/github.png" alt="user" class=" user-avatar-xl"></div>
	                                            <div class="campaign-info">
	                                                <h3 class="mb-1">Campaigns Name</h3>
	                                                <p class="mb-3">Lorem ipsum dolor sit ament</p>
	                                                <p class="mb-1">Min, Views:<span class="text-dark font-medium ml-2">1,00,000</span></p>
	                                                <p>Payout: <span class="text-dark font-medium ml-2">$28</span></p>
	                                                <a href="#"><i class="fab fa-instagram fa-sm instagram-color"></i> </a><a href="#"><i class="fab fa-facebook-square fa-sm facebook-color"></i></a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                                    <div class="card campaign-card text-center">
	                                        <div class="card-body">
	                                            <div class="campaign-img"><img src="/brocoli/resources/ownerResources/images/slack.png" alt="user" class="user-avatar-xl"></div>
	                                                <div class="campaign-info">
	                                                    <h3 class="mb-1">Campaigns Name</h3>
	                                                    <p class="mb-3">Maecenas mattis tempor libero pretium.</p>
	                                                    <p class="mb-1">Min, Views:<span class="text-dark font-medium ml-2">3,80,000</span></p>
	                                                    <p>Payout: <span class="text-dark font-medium ml-2">$36</span></p>
	                                                    <a href="#"><i class="fab fa-facebook-square fa-sm facebook-color"></i> </a><a href="#"><i class="fab fa-snapchat-square fa-sm snapchat-color"></i></a>
	                                                </div>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="col-xl-3 col-lg-6 col-md-6 col-sm-12 col-12">
	                                        <div class="card campaign-card text-center">
	                                            <div class="card-body">
	                                                <div class="campaign-img"><img src="/brocoli/resources/ownerResources/images/mail_chimp.png" alt="user" class="user-avatar-xl"></div>
	                                                    <div class="campaign-info">
	                                                        <h3 class="mb-1">Campaigns Name</h3>
	                                                        <p class="mb-3">Proin vitae lacinia leo</p>
	                                                        <p class="mb-1">Min, Views:<span class="text-dark font-medium ml-2">4,50,000</span></p>
	                                                        <p>Payout: <span class="text-dark font-medium ml-2">$57</span></p>
	                                                        <a href="#"><i class="fab fa-twitter-square fa-sm twitter-color"></i> </a><a href="#"><i class="fab fa-snapchat-square fa-sm snapchat-color"></i></a>
	                                                        <a href="#"><i class="fab fa-facebook-square fa-sm facebook-color"></i></a>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                        </div>
	                                        
	                                        
	                                  </div>
	                                    <!-- ============================================================== -->
	                                    <!-- end recommended campaigns   -->
	                                    <!-- ============================================================== -->
	                                    <!-- ============================================================== -->
	                                    <!-- end content  -->
	                                    <!-- ============================================================== -->
	                                </div>
	                            </div>
	                        </div>
	                        <!-- ============================================================== -->
	                        <!-- end wrapper  -->
	                        <!-- ============================================================== -->
	                    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper  -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->

	<script>
		$( document ).ready(function(){
			
			var bNO = "${loginUser.brand_NO}";
			
			$.ajax({
				url : "ownerHome.ow",
				type: "post",
				data : {bNO:bNO},
				dataType : "json",
				success : function(data){
					$('').text();
					
					
					
					
					
				},error : function(jqxhr, textStatus, errorThrown) {
					console.log("매니저컨택트 list Select ajax 처리실패");

					//에러로그
					console.log(jqxhr);
					console.log(textStatus);
					console.log(errorThrown);
				}
			})
			
		});
	</script>
	
	
	

    <!-- slimscroll js -->
    <script src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <!-- main js -->
    <script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
    <!-- morris-chart js -->
    <script src="/brocoli/resources/ownerResources/vendor/charts/morris-bundle/raphael.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/charts/morris-bundle/morris.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/charts/morris-bundle/morrisjs.html"></script>
    <!-- chart js -->
    <script src="/brocoli/resources/ownerResources/vendor/charts/charts-bundle/Chart.bundle.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/charts/charts-bundle/chartjs.js"></script>
    <!-- dashboard js -->
    <script src="/brocoli/resources/ownerResources/libs/js/dashboard-influencer.js"></script>
</body>
 
</html>