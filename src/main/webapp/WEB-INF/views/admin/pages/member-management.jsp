<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html lang="en">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>회원 관리</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/bootstrap/css/bootstrap.min.css">
    <link href="/brocoli/resources/adminResources/vendor/fonts/circular-std/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/libs/css/style.css">
    <link rel="stylesheet" href="/brocoli/resources/adminResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/select.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="/brocoli/resources/adminResources/vendor/datatables/css/fixedHeader.bootstrap4.css">
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
                            <h2 class="pageheader-title">회원관리</h2>
                            <p class="pageheader-text">Proin placerat ante duiullam scelerisque a velit ac porta, fusce sit amet vestibulum mi. Morbi lobortis pulvinar quam.</p>
                            <div class="page-breadcrumb">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a class="breadcrumb-link">회원관리</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">회원 테이블</li>
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
                    <!-- basic table  -->
                    <!-- ============================================================== -->
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">회원 테이블</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="memberManagement" class="table table-striped table-bordered first" style="text-align:center;">
                                        <thead>
                                            <tr>
                                                <th style="width:5%">번호</th>
                                                <th style="width:6%">일반</th>
                                                <th style="width:5%">이름</th>
                                                <th style="width:8%">아이디</th>
                                                <th style="width:8%">비밀번호</th>
                                                <th style="width:5%">성별</th>
                                                <th style="width:8%">생년월일</th>
                                                <th style="width:8%">전화번호</th>
                                                <th style="width:10%">주소</th>
                                                <th style="width:10%">이메일</th>
                                                <th style="width:6%">적립금</th>
                                                <th style="width:5%">회원정지(Y/N)</th>
                                                <th style="width:5%">회원삭제(Y/N)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="i" begin="0" end="10"> <!-- for -->
                                            <tr>
                                                <td>100</td>
                                                <td>일반</td>
                                                <td>홍길동</td>
                                                <td>hong1</td>
                                                <td>hong1</td>
                                                <td>M</td>
                                                <td>1999/01/01</td>
                                                <td>010-1111-2222</td>
                                                <td>강남구 역삼1동</td>
                                                <td>hong@naver.com</td>
                                                <td>3000</td>
                                                <td>N</td>
                                                <td>N</td>
                                            </tr>
                                        </c:forEach>
                                      </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- end basic table  -->
                    <!-- ============================================================== -->
                    
                    
                     <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                        <div class="card">
                            <h5 class="card-header">owner 테이블</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table id="ownerManagement" class="table table-striped table-bordered first" style="text-align:center;">
                                        <thead>
                                            <tr>
                                                <th style="width:5%">번호</th>
                                                <th style="width:6%">일반</th>
                                                <th style="width:5%">이름</th>
                                                <th style="width:8%">아이디</th>
                                                <th style="width:8%">비밀번호</th>
                                                <th style="width:5%">성별</th>
                                                <th style="width:8%">생년월일</th>
                                                <th style="width:8%">전화번호</th>
                                                <th style="width:10%">주소</th>
                                                <th style="width:10%">이메일</th>
                                                <th style="width:6%">적립금</th>
                                                <th style="width:5%">회원정지(Y/N)</th>
                                                <th style="width:5%">회원삭제(Y/N)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="i" begin="0" end="10"> <!-- for -->
                                            <tr>
                                                <td>100</td>
                                                <td>일반</td>
                                                <td>홍길동</td>
                                                <td>hong1</td>
                                                <td>hong1</td>
                                                <td>M</td>
                                                <td>1999/01/01</td>
                                                <td>010-1111-2222</td>
                                                <td>강남구 역삼1동</td>
                                                <td>hong@naver.com</td>
                                                <td>3000</td>
                                                <td>N</td>
                                                <td>N</td>
                                            </tr>
                                        </c:forEach>
                                      </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <!-- ============================================================== -->
                    <!-- data table  -->
                    <!-- ============================================================== -->            
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- end main wrapper -->
    <!-- ============================================================== -->
    
    	<!-- 회원 상세보기용 -->
		<script>
			$(function(){
				$("#memberManagement").find("td").mouseenter(function(){
					$(this).parents("tr").css({ "cursor":"pointer"});
				}).click(function(){
					var bId = $(this).parents().children("td").eq(0).text();	
					location.href="member-detail.jsp";
					//location.href="detail.bo?bId="+bId;
				});
			});
		</script>
    
    	<!-- owner 상세보기용 -->
		<script>
			$(function(){
				$("#ownerManagement").find("td").mouseenter(function(){
					$(this).parents("tr").css({ "cursor":"pointer"});
				}).click(function(){
					var bId = $(this).parents().children("td").eq(0).text();	
					location.href="member-detail.jsp";
					//location.href="detail.bo?bId="+bId;
				});
			});
		</script>
		
		

    
    
    
    <!-- ============================================================== -->
    <!-- Optional JavaScript -->
    <script src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/multi-select/js/jquery.multi-select.js"></script>
    <script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/datatables/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/datatables/js/buttons.bootstrap4.min.js"></script>
    <script src="/brocoli/resources/adminResources/vendor/datatables/js/data-table.js"></script>
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