<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>상품 상세보기</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/adminResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
</head>

<body>
	<%@ include file="header.jsp" %>
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
                            <h2 class="pageheader-title">판매상품 정보</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="member-management.jsp" class="breadcrumb-link">판매상품 관리</a></li>
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">판매상품정보</a></li>
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
                                <h5 class="card-header">판매상품정보</h5>
                                <div class="card-body">
                                    <form action="productUpdate.ad" method="post" enctype="multipart/form-data">
                                    	<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_NO" value="${p[0].p_NO}" readonly="readonly">
                                            </div>
                                        </div>
                                    	<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품이미지</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                            	<img src="/brocoli/resources/product-Img/${p[0].pfList.pf_Img1_ReName}" width="120" height="120">
                                            	<img src="/brocoli/resources/product-Img/${p[0].pfList.pf_Img2_ReName}" width="120" height="120">
                                            	<img src="/brocoli/resources/product-Img/${p[0].pfList.pf_Img3_ReName}" width="120" height="120">
                                            	<img src="/brocoli/resources/product-Img/${p[0].pfList.pf_Img4_ReName}" width="120" height="120">
                                            	<img src="/brocoli/resources/product-Img/${p[0].pfList.pf_Img5_ReName}" width="120" height="120">
                                            	<img src="/brocoli/resources/product-Img/${p[0].pfList.pf_Img6_ReName}" width="120" height="120">                                           
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Name" value="${p[0].p_Name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Name" value="${p[0].brList.b_Name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">기본가</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Price" value="${p[0].p_Price}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">할인가</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Sail_Price" value="${p[0].p_Sail_Price}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">판매가</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Last_Price" value="${p[0].p_Last_Price}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리(대)</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Bcategory" value="${p[0].p_Bcategory}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">카테고리(소)</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Scategory" value="${p[0].p_Scategory}">
                                            </div>
                                        </div>                                            
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품상태</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Status" value="${p[0].p_Status}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">총 주문수</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Order_Count"  value="${p[0].p_Order_Count}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품설명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Comment" value="${p[0].p_Comment}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품입고일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Insert_Date" value="${p[0].p_Insert_Date}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품수정날짜</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Modify_Date" value="${p[0].p_Modify_Date}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">작성자</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Writer" value="${p[0].p_Writer}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품수정ID</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="p_Modify_Id" value="${p[0].p_Modify_Id}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품옵션 번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control"  name="op_NO" value="${p[0].poList.op_NO}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품옵션1</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control"  name="option_1" value="${p[0].poList.option_1}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품옵션2</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control"  name="option_2" value="${p[0].poList.option_2}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">재고</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control"  name="op_Stock" value="${p[0].poList.op_Stock}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">입고예정일</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="op_Rec_Date" value="${p[0].poList.op_Rec_Date}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상품옵션상태</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="op_Status_YN" value="${p[0].poList.op_Status_YN}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상태</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <c:set var="p_Status" value="${p[0].p_Status}" />
                                            	<c:choose>
                                            		<c:when test="${p_Status eq '1'}">
                                            			<h4 id="p_Status">판매중</h4>
                                            		</c:when>
                                            		<c:when test="${p_Status eq '2'}">
                                            			<h4 id="p_Status">할인중</h4>
                                            		</c:when>
                                            		<c:when test="${p_Status eq '3'}">
                                            			<h4 id="p_Status">품절</h4>
                                            		</c:when>
                                            	</c:choose>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">상태 변경</label>
                                            <div class="btn-group">
                                                <select  id="p_StatusOP" name="p_Status" style="margin-left:15px">
                                                	<option value="1" >판매중</option>
                                                	<option value="2" >할인중</option>
                                                	<option value="3" >품절</option>
                                                </select>
                                            </div>		
                                        </div>
                                        <div class="form-group row text-right">
                                            <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                                <button type="submit" class="btn btn-dark">저장</button>
                                            </div>
                                        </div>
                                    </form>
                                    <div class="form-group row text-right">
                                    	<div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                    		<form action="brandDelete.ad" method="post" >
                                        		<input type="hidden" name="brand_NO" value="${b.brand_NO}"/>	
                                            	<button type="submit" class="btn btn-dark">상품삭제</button>
                                    		</form>
                                    	</div>
                                    </div>
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
    <script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/parsley/parsley.js"></script>
    <script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
    
    <!-- 작성자 : 신은지 
         1. dropdown 저장값 불러오기  -->
    <script>
     	var b_Status = $("#b_Status").text();
     	var enter = "입점";
     	var out = "폐점";
     	if(b_Status == enter ){
     		$("#block_YN option[value='Y']").attr("selected","selected"); 
     	}else if(b_Status == out){
     		$("#block_YN option[value='N']").attr("selected","selected"); 	
     	}
    </script>
    <!-- //신은지 -->
    
    <script>
    $('#form').parsley();
    </script>
    <script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
    </script>
    
</body>
</html>