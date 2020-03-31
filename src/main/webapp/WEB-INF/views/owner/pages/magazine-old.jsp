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
    
    <title>오너 : 등록된 매거진</title>
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
                            <h2 class="pageheader-title">등록된 매거진</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">메뉴</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">매거진</a></li>
                                        <li class="breadcrumb-item"><a href="#" class="breadcrumb-link">등록된 매거진</a></li>
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
                                <h5 class="mb-0">등록된 매거진</h5>
                                <p> - 등록하셨던 매거진 리스트입니다.<br>
                                - Print, Excel, CSV, PDF 버튼 클릭시 저장됩니다.</p>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="example" class="table table-striped table-bordered second" style="width:100%">
                                        <thead>
                                            <tr>
                                            	<th>번호</th>
                                                <th>신청일</th>
                                                <th>등록일</th>
                                                <th>분류</th>
                                                <th>대표이미지</th>
                                                <th>제목</th>
                                                <th>내용</th>
                                                <th>조회수</th>
                                                <th>작성자</th>
                                                <th>상태</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                            	<td>1</td>
                                                <td>2020-03-27</td>
                                                <td>-</td>
                                                <td>룩북</td>
                                                <td align="center" >
                                                	<div class="m-r-10"><img src="/brocoli/resources/magazine-Img/M0001.jfif" alt="user" class="rounded" width="45"></div>
                                                </td>
                                                <td>썬배더</td>
                                                <td>마크 곤잘레스 20 서머 컬렉션...</td>
                                                <td>216</td>
                                                <td>Juwan_P</td>
                                                <td>
                                                	<span class="badge-dot badge-warning"></span>승인대기중
                                                </td>
                                            </tr>
                                            <tr>
                                            	<td>2</td>
                                                <td>2020-02-14</td>
                                                <td>2020-02-15</td>
                                                <td>룩북</td>
                                                <td align="center" >
                                                	<div class="m-r-10"><img src="/brocoli/resources/magazine-Img/M0002.jfif" alt="user" class="rounded" width="45"></div>
                                                </td>
                                                <td>확립.</td>
                                                <td>프리즘웍스의 2020 S/S 컬렉션 ...</td>
                                                <td>3,452</td>
                                                <td>Juwan_P</td>
                                                <td>
                                                	<span class="badge-dot badge-success mr-1"></span>게재중
                                                </td>
                                            </tr>
                                            <tr>
                                            	<td>3</td>
                                                <td>2020-01-27</td>
                                                <td>2020-01-28</td>
                                                <td>룩북</td>
                                                <td align="center" >
                                                	<div class="m-r-10"><img src="/brocoli/resources/magazine-Img/M0003.jfif" alt="user" class="rounded" width="45"></div>
                                                </td>
                                                <td>유스탈지아</td>
                                                <td>Youyh (젊음) + Nostalgi ...</td>
                                                <td>19,001</td>
                                                <td>Juwan_P</td>
                                                <td>
                                                	<span class="badge-dot badge-danger"></span>비공개
                                                </td>
                                            </tr>
                
                                            
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                            	<th>번호</th>
                                                <th>신청일</th>
                                                <th>등록일</th>
                                                <th>분류</th>
                                                <th>대표이미지</th>
                                                <th>제목</th>
                                                <th>내용</th>
                                                <th>조회수</th>
                                                <th>작성자</th>
                                                <th>상태</th>
                                            </tr>
                                        </tfoot>
                                    </table>
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