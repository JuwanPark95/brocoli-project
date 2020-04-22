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
    
    <title>오너 : 광고신청</title>
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
                            <h2 class="pageheader-title">광고신청</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">광고</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">광고신청</a></li>
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
                    <!-- data table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-0">광고입찰</h5>
                                <p> - 원하시는 배너 번호를 반드시 확인하고 입찰해주세요.<br>
                                - Print, Excel, CSV, PDF 버튼 클릭시 저장됩니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>배너번호</th>
                                                <th>사이즈</th>
                                                <th>전월 낙찰가</th>
                                                <th>입찰금액</th>
                                                <th style="width: 121px;">배너이미지</th>
                                                <th>입찰신청</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>NO.1</td>
                                                <td>550*420</td>
                                                <td>4,120,000원</td>
                                                <td>
                                                	<input type="number">
                                                </td>
                                                <td>
	                                                <div id="contentImgArea1"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                                	<img id="contentImg1" src="http://via.placeholder.com/550x420"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
		                                            </div>
                                                </td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">입찰</button>
			                                        </div>
                                                </td>
                                                <td>
                                                	<span class="badge-dot badge-brand"></span>미입찰
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>NO.2</td>
                                                <td>550*420</td>
                                                <td>4,620,000원</td>
                                                <td>
                                                	<input type="number">
                                                </td>
                                                <td>
                                                	<div id="contentImgArea2"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
                                                		<img id="contentImg2" src="http://via.placeholder.com/550x420"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
                                                	</div>
                                                </td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">입찰</button>
			                                        </div>
                                                </td>
                                                <td>
                                                	<span class="badge-dot badge-brand"></span>미입찰
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>NO.3</td>
                                                <td>330*250</td>
                                                <td>2,310,000원</td>
                                                <td>
                                                	<input type="number">
                                                </td>
                                                <td>
                                                	<div id="contentImgArea3"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
                                                		<img id="contentImg3" src="http://via.placeholder.com/330x250"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
                                                	</div>
                                                </td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">입찰</button>
			                                        </div>
                                                </td>
                                                <td>
                                                	<span class="badge-dot badge-brand"></span>미입찰
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>NO.4</td>
                                                <td>330*250</td>
                                                <td>2,690,000원</td>
                                                <td>
                                                	<span>2,599,000 원</span>
                                                </td>
                                                <td>
                                                	<div id="contentImgArea4"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
                                                		<img id="contentImg4" src="http://via.placeholder.com/330x250"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
                                                	</div>
                                                </td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">수정</button>
			                                        </div>
                                                </td>
                                                <td>
                                                	<span class="badge-dot badge-success mr-1"></span>입찰완료
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>NO.5</td>
                                                <td>330*250</td>
                                                <td>2,990,000원</td>
                                                <td>
                                                	<input type="number">
                                                </td>
                                                <td>
	                                                <div id="contentImgArea5"  style="float: left; width: 171px; height: auto; vertical-align: middle; display: flex; align-items: center; " class="img-thumbnail mr-3" >
	                                                	<img id="contentImg5" src="http://via.placeholder.com/330x250"  alt="Responsive image" style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
	                                                </div>
                                                </td>
                                                <td>
                                                	<div class="btn-group ml-auto">
			                                            <button class="btn btn-sm btn-outline-light">입찰</button>
			                                        </div>
                                                </td>
                                                <td>
                                                	<span class="badge-dot badge-brand"></span>미입찰
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>배너번호</th>
                                                <th>사이즈</th>
                                                <th>전월 낙찰가</th>
                                                <th>배너이미지</th>
                                                <th>입찰금액</th>
                                                <th>입찰신청</th>
                                                <th>상태</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                        <div class="productImgArea" id="productImgArea" style="display: none;">
                                        	<input type="file" id="banner_Img1" name="file1" accept="resources/product-Img/*" onchange="loadImg(this, 1);" />
                                        	<input type="file" id="banner_Img2" name="file2" accept="resources/product-Img/*" onchange="loadImg(this, 2);" />
                                        	<input type="file" id="banner_Img3" name="file3" accept="resources/product-Img/*" onchange="loadImg(this, 3);" />
                                        	<input type="file" id="banner_Img4" name="file4" accept="resources/product-Img/*" onchange="loadImg(this, 4);" />
                                        	<input type="file" id="banner_Img5" name="file5" accept="resources/product-Img/*" onchange="loadImg(this, 5);" />
                                        </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end data table  -->
                    <!-- ============================================================== -->
                </div>
 
 
            </div>

        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    
	<!--    작성자 : 박주완
        작성일 : 2020-04-21
        내용: 이미지 클릭시 이미지 파일 업로드 스크립트 -->
	<script>
	//사진 게시판 미리보기 기능 지원 스크립트
	$(function(){
	      
	   $('#contentImgArea1').click(() => {
	      $('#banner_Img1').click();
	   });
	      
	   $('#contentImgArea2').click(() => {
	      $('#banner_Img2').click();
	   });
	   
	   $('#contentImgArea3').click(() => {
	      $('#banner_Img3').click();
	   });

	   $('#contentImgArea4').click(() => {
	      $('#banner_Img4').click(); 
	   });
	    
	   $('#contentImgArea5').click(() => {
	      $('#banner_Img5').click();
	   });
	   
	});

	function loadImg(value, num){
	   
	   if(value.files && value.files[0])  {
	      
	      var reader = new FileReader();
	      
	      reader.onload = function(e){
	         
	         switch(num) {
	         case 1 : $('#contentImg1').attr('src', e.target.result);
	            break;
	         case 2 : $('#contentImg2').attr('src', e.target.result);
	            break;
	         case 3 : $('#contentImg3').attr('src', e.target.result);
	            break;
	         case 4 : $('#contentImg4').attr('src', e.target.result);
	            break;
	         case 5 : $('#contentImg5').attr('src', e.target.result);
	            break;
	         }
	      }
	      reader.readAsDataURL(value.files[0]);
	   }
	}
	</script>
	
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