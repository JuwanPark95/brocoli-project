<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<title>입점 문의</title>
<style>
	#all{
		  /* border:1px solid red; */
          margin: auto;
          width: 50%;
          height: 100%;
          margin-top: 30px;
	}
	
	.form-group{
	    border: 1px solid #999;
   		border-radius: 10px;
   		padding: 16px
    }
    
    #ck{
    	height: 26px;
    	width: 17px;
    }
</style>
<%@ include file="/common/header.jsp" %>
<%@ include file="/common/sidebar.jsp" %>
</head>
<body>

<form>
	<div id="all">
			<h2 style="background: #222; color: white; padding:4%; text-align: center" >BROCOLI 입점 문의</h2><Br>
			<hr>
			<p>
			안녕하세요.<br>
			BOCOLI에 입점 문의주신 것에 깊은 감사 드립니다. <br>
			하단의 시트를 기재 후 제출하여 주시면 담당자 배정 후 연락드리도록 하겠습니다.			
			</p>
			<hr>
		
  		<div class="form-group">
      		<label for="userId">사업자 명 : </label>
    		<input type="text" class="form-control" id="userId" name="userId" style="width:90%;">
   		</div>
   		 		
   		<div class="form-group">
      		<label for="userPwd2">취급 브랜드 명: </label>
    		<input type="password" class="form-control" id="userPwd2" name="userPwd2" style="width:90%;">
   		</div>
   		
   		<div class="form-group">
      		<label for="email">사이트 URL(http://포함) : </label>
    		<input type="email" class="form-control" id="email" name="email" style="width:90%;">
   		</div>
   		
   		<div class="form-group">
      		<label for="phone">담당자 명 : </label>
    		<input type="text" class="form-control" id="phone" name="phone" style="width:90%;">
   		</div>
   		
   		<div class="form-group">
      		<label for="year">핸드폰 번호 : </label>
    		<input type="text" class="form-control" id="year" name="year" style="width:90%;">
   		</div>
   		
   		<div class="form-group">
      		<label for="gender">담당자 이메일 : </label>
    		<input type="text" class="form-control" id="year" name="year" style="width:90%;">
   		</div>
   		<div id="cate" class="form-group">
   			<label for="sad">카테고리 분류 : </label>
   			
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Clothing (국내 브랜드 의류 전반) (http://www.BROCOLI.com/clothing)
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Shoes (자체생산/정식수입/병행수입 슈즈) (http://www.BROCOLI.com/shoes)
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Accessories (가방/귀금속 등 액세서리를 다룹니다) (http://www.BROCOLI.com/acc)
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Lifestyle (생활 소품, 가전 제품 및 헬스 케어 용품) (http://www.BROCOLI.com/life)
   			</div>
   			
   			<div style="display: inline-flex">
   			<input type="checkBox" name="cate" id="ck" value="">&nbsp; Select Shop (해외 정식수입 브랜드/캐쥬얼, 명품병행 수입 의류) (http://www.BROCOLI.com/selectshop)
   			</div>   			
   			
   		</div>
   		
   		<div class="form-group">
      		<label for="year">브랜드 소개 : </label>
    		<input type="text" class="form-control" id="year" name="year" style="width:90%;">
   		</div>
   		<br><br>
   		<div style="margin-left: 30%">
   		<button type="submit" class="btn btn-primary" style="background: #222; width: 300px; border: 1px solid #222;">가   입</button>
   		</div>
   		
	</div>
	<br>
</form>
		<%@ include file="/common/footer.jsp" %>
		<%@ include file="/common/BacktoTop.jsp" %>
				
<!--===============================================================================================-->   
   <script src="../main/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
   <script src="../main/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
   <script src="../main/vendor/bootstrap/js/popper.js"></script>
   <script src="../main/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
   <script src="vendor/select2/select2.min.js"></script>
   <script>
      $(".js-select2").each(function(){
         $(this).select2({
            minimumResultsForSearch: 20,
            dropdownParent: $(this).next('.dropDownSelect2')
         });
      })
   </script>
<!--===============================================================================================-->
   <script src="../main/vendor/daterangepicker/moment.min.js"></script>
   <script src="../main/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
   <script src="../main/vendor/slick/slick.min.js"></script>
   <script src="../main/js/slick-custom.js"></script>
<!--===============================================================================================-->
   <script src="../main/vendor/parallax100/parallax100.js"></script>
   <script>
        $('.parallax100').parallax100();
   </script>
<!--===============================================================================================-->
   <script src="../main/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
   <script>
      $('.gallery-lb').each(function() { // the containers for all your galleries
         $(this).magnificPopup({
              delegate: 'a', // the selector for gallery item
              type: 'image',
              gallery: {
                 enabled:true
              },
              mainClass: 'mfp-fade'
          });
      });
   </script>
<!--===============================================================================================-->
   <script src="../main/vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
   <script src="../main/vendor/sweetalert/sweetalert.min.js"></script>
   <script>
      $('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
         e.preventDefault();
      });

      $('.js-addwish-b2').each(function(){
         var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-b2');
            $(this).off('click');
         });
      });

      $('.js-addwish-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

         $(this).on('click', function(){
            swal(nameProduct, "is added to wishlist !", "success");

            $(this).addClass('js-addedwish-detail');
            $(this).off('click');
         });
      });

      /*---------------------------------------------*/

      $('.js-addcart-detail').each(function(){
         var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
         $(this).on('click', function(){
            swal(nameProduct, "is added to cart !", "success");
         });
      });
   
   </script>
<!--===============================================================================================-->
   <script src="../main/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
   <script>
      $('.js-pscroll').each(function(){
         $(this).css('position','relative');
         $(this).css('overflow','hidden');
         var ps = new PerfectScrollbar(this, {
            wheelSpeed: 1,
            scrollingThreshold: 1000,
            wheelPropagation: false,
         });

         $(window).on('resize', function(){
            ps.update();
         })
      });
   </script>
<!--===============================================================================================-->
   <script src="../main/js/main.js"></script>
	</body>
</html>