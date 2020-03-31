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
        
    <title>오너 : 브랜드 설정</title>
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
                            <h2 class="pageheader-title">브랜드 정보 변경</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">설정</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">브랜드 설정</a></li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end pageheader -->
                <!-- ============================================================== -->
<!-- ============================================================== -->
                        <!-- basic form  -->
                        <!-- ============================================================== -->
                        <div class="row">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                               
                                <div class="card">
                                    <h5 class="card-header"><strong>브랜드 정보 변경</strong></h5>
                                    <div class="card-body">
                                        <form>
                                       		<div class="form-group">
                                                <label  for="inputText3" class="col-form-label"><strong>브랜드 명</strong></label>
                                                <input id="inputText3" type="text" class="form-control"  placeholder="DIM.E CRESS" readonly="readonly">
                                            </div>
                                            <div class="form-group">
                                                <label  for="inputText3" class="col-form-label"><strong>대표 주소</strong></label>
                                                <input id="inputText3" type="text" class="form-control"  placeholder="기존주소">
                                            </div>
                                           
                                            <div class="form-group">
                                                <label for="inputEmail"><strong>브랜드 대표 이메일</strong></label>
                                                <input id="inputEmail" type="email" placeholder="기존이메일" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputText4" class="col-form-label"><strong>브랜드 대표 번호</strong></label>
                                                <input id="inputText4" type="number" class="form-control" placeholder="Numbers">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputPassword"><strong>대표명</strong></label>
                                                <input id="inputPassword" type="text" placeholder="기존대표명" class="form-control">
                                            </div>
                                            	<label for=""><strong>대표 이미지 변경</strong></label>
                                            <div class="custom-file mb-3">
                                                <input type="file" class="custom-file-input" id="customFile" >
                                                <label class="custom-file-label btn btn-primary" for="customFile" style="width: 90px;"><strong>파일선택</strong></label>
                                                
                                            </div>
                                            <div class="text-center">
	                                            <img src="/brocoli/resources/images/DIM_E_CRES_LOGO.jpg" alt="User Avatar" class="rounded-circle user-avatar-xxl">
	                                         </div>
                                            <div class="form-group">
                                                <label for="exampleFormControlTextarea1"><strong>브랜드 소개</strong></label>
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-body border-top">
                                        <h3><strong>추가사항</strong></h3>
                                        <form>
                                            <div class="form-group">
                                                <label for="inputSmall" class="col-form-label"><strong>관리자 아이디 1</strong></label>
                                                <input id="inputSmall" type="text" value="아이디를 반드시 확인해 주세요." class="form-control form-control-sm">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputSmall" class="col-form-label"><strong>관리자 아이디 2</strong></label>
                                                <input id="inputSmall" type="text" value="아이디를 반드시 확인해 주세요." class="form-control form-control-sm">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputSmall" class="col-form-label"><strong>관리자 아이디 2</strong></label>
                                                <input id="inputSmall" type="text" value="아이디를 반드시 확인해 주세요." class="form-control form-control-sm">
                                            </div>
                                            <br>
                                            <hr>
                                            <div class="form-group">
                                                <label for="inputDefault" class="col-form-label"><strong>알림 수신 이메일 1</strong></label>
                                                <input id="inputDefault" type="email" value="Default input" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputDefault" class="col-form-label"><strong>알림 수신 이메일 2</strong></label>
                                                <input id="inputDefault" type="email" value="Default input" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label for="inputDefault" class="col-form-label"><strong>알림 수신 이메일 3</strong></label>
                                                <input id="inputDefault" type="email" value="Default input" class="form-control">
                                            </div>
                                        </form>
                                        <br><br>
                                    <a href="#" class="btn btn-primary btn-block">적용</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ============================================================== -->
                        <!-- end basic form  -->
                        <!-- ============================================================== -->



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