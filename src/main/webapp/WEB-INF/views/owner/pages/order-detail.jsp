<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/ownerResources/vendor/datatables/css/fixedHeader.bootstrap4.css">
    
    <%@ include file="header.jsp" %>
    
    <style type="text/css">
    	.form-control[readonly]{
    		    background-color: #ffffff;
    			opacity: 1;
    	}
    </style>
    
    <title>오너 : 주문관리</title>
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
                            <h2 class="pageheader-title">주문관리</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">주문관리</a></li>
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
                        <div class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
                            <div class="row">
                                <div class="col-md-8">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="mb-0"><strong>주문 정보</strong></h4>
                                        </div>
                                        <div class="card-body">
                                            <form class="needs-validation" novalidate="">
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="firstName">주문번호</label>
                                                        <input type="text" readonly="readonly" class="form-control" id="firstName" placeholder="" value="" required="">
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="lastName">주문일자</label>
                                                        <input type="text" readonly="readonly" class="form-control" id="lastName" placeholder="" value="" required="">
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="username">고객명</label>
                                                    <div class="input-group">
                                                        <input type="text" readonly="readonly" class="form-control" id="username" placeholder="Username" required="">
                                                    </div>
                                                </div>
                                             <!--    <div class="mb-3">
                                                    <label for="email">Email <span class="text-muted">(Optional)</span></label>
                                                    <input type="email" class="form-control" id="email" placeholder="you@example.com">
                                                    <div class="invalid-feedback">
                                                        Please enter a valid email address for shipping updates.
                                                    </div>
                                                </div> -->
                                                <div class="mb-3">
                                                    <label for="address">배송지</label>
                                                    <input type="text" readonly="readonly" class="form-control" id="address" placeholder="배송받을 주소" required="">
                                                </div>
                                                <div class="mb-3">
                                                    <label for="address2">배송메시지</label>
                                                    <textarea rows="" cols=""  class="form-control" readonly="readonly" style="resize: none;"></textarea>
                                                </div>
                                                <!-- <div class="row">
                                                    <div class="col-md-5 mb-3">
                                                        <label for="country">옵션</label>
                                                        <input type="text" readonly="readonly" class="form-control" placeholder="Apartment or suite">
                                                    </div>
                                                    <div class="col-md-4 mb-3">
                                                        <label for="state">수량</label>
                                                        <input type="text" readonly="readonly" class="form-control"placeholder="Apartment or suite">
                                                    </div>
                                                    <div class="col-md-3 mb-3">
                                                        <label for="zip">주문금액</label>
                                                        <input type="text" readonly="readonly" class="form-control" id="zip" placeholder="" required="">
                                                    </div>
                                                </div> -->
                                                <hr class="mb-4">
                                                <label for="zip"><strong>진행상황 : </strong>배송중</label>
                                                <div class="progress">
	                                                <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
	                                                	배송중
	                                                </div>
                                            	</div>
                                                <hr class="mb-4">
                                                <h4 class="mb-3"><strong>배송정보</strong></h4>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-name">배송사</label>
                                                        <input type="text" readonly="readonly" class="form-control" id="cc-name" placeholder="" required="">
                                                        <small class="text-muted">회사사정에 따라 배송사는 변경될 수 있습니다.</small>
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-number">송장번호</label>
                                                        <input type="text" readonly="readonly" class="form-control" id="cc-number" placeholder="" required="">
                                                    </div>
                                                </div>
                                                <hr class="mb-4">
                                                <h4 class="mb-3"><strong>교환/환불</strong></h4>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-name">신청번호</label>
                                                        <input type="text" readonly="readonly" class="form-control" id="cc-name" placeholder="" required="">
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-number">신청유형</label>
                                                        <input type="text" readonly="readonly" class="form-control" id="cc-number" placeholder="" required="">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-name">신청일시</label>
                                                        <input type="text" readonly="readonly" class="form-control" id="cc-name" placeholder="" required="">
                                                    </div>
                                                    <div class="col-md-6 mb-3">
                                                        <label for="cc-number">완료일시</label>
                                                        <input type="text" readonly="readonly" class="form-control" id="cc-number" placeholder="" required="">
                                                    </div>
                                                </div>
                                                <div class="mb-3">
                                                    <label for="username">사유</label>
                                                    <div class="input-group">
                                                        <textarea rows="" cols=""  class="form-control" readonly="readonly" style="resize: none;"></textarea>
                                                    </div>
                                                </div>
                                                <label for="zip"><strong>진행상황 : </strong>환불접수</label>
                                                <div class="progress">
	                                                <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 25%; background-color: #ffc108 !important;">
	                                                	환불접수
	                                                </div>
                                            	</div>
                                                <hr class="mb-4">
                                                <button class="btn btn-primary btn-lg btn-block" type="submit">이전으로</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                
                                
                                <div class="col-md-4 mb-4">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="d-flex justify-content-between align-items-center mb-0">
                                                <span class="text-muted">상품정보</span>
                                          		<span class="badge badge-secondary badge-pill">1</span>
                                            </h4>
                                        </div>
                                        <div class="card-body">
                                            <ul class="list-group mb-3">
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <div>
                                                    	<div class="m-r-10"><img src="/brocoli/resources/product-Img/${r.pfList.pf_Img1_ReName}" alt=".jpg" class="rounded" width="45"></div>
                                                        <h6 class="my-0">DIM. DMCS TURTLE SWET-SHIRTS_WHITE</h6>
                                                        <small class="text-muted">상의/셔츠</small>
                                                    </div>
                                                    <span class="text-muted">128,000 원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <div>
                                                        <h6 class="my-0">옵션</h6>
                                                        <small class="text-muted">OPTION : </small>
                                                        <small class="text-muted">BLACK / SS</small>
                                                    </div>
                                                    <span class="text-muted">재고 : 125개</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <div>
                                                        <h6 class="my-0">등록가격</h6>
                                                        <small class="text-muted">ORIGIN PRICE</small>
                                                    </div>
                                                    <span class="text-muted">12,500원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <div>
                                                        <h6 class="my-0">할인가격</h6>
                                                        <small class="text-muted">SALE PRICE</small>
                                                    </div>
                                                    <span class="text-muted">-2,000원</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between bg-light">
                                                    <div class="text-success">
                                                        <h6 class="my-0">주문수량</h6>
                                                        <small>ORDER STOCK</small>
                                                    </div>
                                                    <span class="text-success">2개</span>
                                                </li>
                                                <li class="list-group-item d-flex justify-content-between">
                                                    <span>Total (원)</span>
                                                    <strong>10,500원</strong>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                

            </div>
        </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->

    <script src="/brocoli/resources/ownerResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="/brocoli/resources/ownerResources/libs/js/main-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
    <script src="/brocoli/resources/ownerResources/vendor/datatables/js/data-table.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.colVis.min.js"></script>
    <script src="https://cdn.datatables.net/rowgroup/1.0.4/js/dataTables.rowGroup.min.js"></script>
    <script src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
    <script src="https://cdn.datatables.net/fixedheader/3.1.5/js/dataTables.fixedHeader.min.js"></script>
    
</body>
 
</html>