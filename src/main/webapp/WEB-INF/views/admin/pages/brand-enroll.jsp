<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>브랜드 등록페이지</title>
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
                            <h2 class="pageheader-title">브랜드 정보</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="member-management.jsp" class="breadcrumb-link">가맹브랜드 관리</a></li>
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">브랜드정보</a></li>
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
                                <h5 class="card-header">브랜드정보</h5>
                                <div class="card-body">
                                    <form action="brandUpdate.ad" method="post">
                                    	<div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">로고</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                            <div class="form-group row">
                                               <div id="titleImgArea" style=" float: left; width: 171px; height: 210px; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
                                                  <img id="titleImg" src="http://via.placeholder.com/160x200"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
                                               </div>
                                            </div>
                                        	</div>
	                                        <div class="productImgArea" id="productImgArea">
	                                           <input type="file" id="pf_Img1" name="file1" accept="resources/product-Img/*" onchange="loadImg(this, 1);" />
	                                        </div>
                                            
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Name" value="${b.b_Name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="brand_NO" value="${b.brand_NO}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드설명</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Comment" value="${b.b_Comment}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">사업자번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Comment" value="${b.b_Comment}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">대표</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Owner_Name" value="${b.b_Owner_Name}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">브랜드주소</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Address" value="${b.b_Address}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">전화번호</label>
                                            <div class="col-12 col-sm-8 col-lg-6">
                                                <input type="text" class="form-control" name="b_Phone" value="${b.b_Phone}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">owner 아이디1</label>
                                            <div class="col-lg-2">
                                                <input type="text" class="form-control" name="b_Owner1_ID" value="${b.b_Owner1_ID}">
                                            </div>
                                            <label class="col-12 col-sm-2 col-form-label text-sm-right">owner email1</label>
                                            <div class="col-12 col-lg-2">
                                                <input type="text" class="form-control" name="b_Email1" value="${b.b_Email1}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">owner 아이디2</label>
                                            <div class="col-lg-2">
                                                <input type="text" class="form-control" name="b_Owner2_ID" value="${b.b_Owner2_ID}">
                                            </div>
                                            <label class="col-12 col-sm-2 col-form-label text-sm-right">owner email2</label>
                                            <div class="col-12 col-lg-2">
                                                <input type="text" class="form-control" name="b_Email2" value="${b.b_Email2}">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-12 col-sm-3 col-form-label text-sm-right">owner 아이디3</label>
                                            <div class="col-lg-2">
                                                <input type="text" class="form-control" name="b_Owner3_ID" value="${b.b_Owner3_ID}">
                                            </div>
                                            <label class="col-12 col-sm-2 col-form-label text-sm-right">owner email3</label>
                                            <div class="col-12 col-lg-2">
                                                <input type="text" class="form-control" name="b_Email3" value="${b.b_Email3}">
                                            </div>
                                        </div>
                                        <div class="form-group row text-right">
                                            <div class="col col-sm-10 col-lg-9 offset-sm-1 offset-lg-0">
                                                <button type="submit" class="btn btn-dark">저장</button>
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
    <script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/parsley/parsley.js"></script>
    <script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
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
    
    <!--    작성자 : 박주완
        작성일 : 2020-04-03
        내용: 이미지 클릭시 이미지 파일 업로드 스크립트 -->
   <script>
   //사진 게시판 미리보기 기능 지원 스크립트
   $(function(){
      $('#productImgArea').hide();
      
         
      $('#titleImgArea').click() => {
         $('#pf_Img1').click();
      });
         
   });

   function loadImg(value, num){
      
      if(value.files && value.files[0])  {
         
         var reader = new FileReader();
         
         reader.onload = function(e){
            
            switch(num) {
            case 1 : $('#titleImg').attr('src', e.target.result);
               break;
            }
         }
         reader.readAsDataURL(value.files[0]);
      }
   }
   </script>
    
    
</body>
</html>