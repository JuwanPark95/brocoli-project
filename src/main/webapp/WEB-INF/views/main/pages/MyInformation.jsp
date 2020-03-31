<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/cart.jsp" %>
<%@ include file="../common/sidebar.jsp" %>

<meta charset="UTF-8">
<title>My information</title>


<link rel="stylesheet" type="text/css" href="/brocoli/main/css/myInformation.css">

<style>
button{
  background:#000000;
  color:#fff;
  border:none;
  position:relative;
  height:60px;
  font-size:1.6em;
  padding:0 4em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
button:hover{
  background:#fff;
  color:#000000;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #000000;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
}

</style>

</head>
<body >


<div id="contentWrapper">
        <div id="contentWrap">
            
            <div id="content">
                <div id="join" class="mypage SMP-table">
					<div class="SMP-container">
					<h2 class="tit_page">MY INFOMATION</h2>
						
						
					<form name="iddupop" method="post" action="/shop/iddup.html">
                        <input name="id" type="hidden" value="">
                        <input name="mode" type="hidden" value="">
                    </form>
                    <form name="ipinInForm" method="post">
                        <input type="hidden" name="IDPCODE" value="">
                        <input type="hidden" name="IDPURL" value="">
                        <input type="hidden" name="CPCODE" value="">    
                        <input type="hidden" name="CPREQUESTNUM" value="">
                        <input type="hidden" name="RETURNURL" value="">
                        <input type="hidden" name="WEBPUBKEY" value="">
                        <input type="hidden" name="WEBSIGNATURE" value="">
                        <input type="hidden" name="FILLER01" value="">
                        <input type="hidden" name="FILLER02" value="JOIN">
                    </form>
                    <form name="ipinOutForm" method="post" action="/ssllogin/idinfo.html">
                        <input type="hidden" name="popup" value="">
                        <input type="hidden" name="cur_page" value="">
                        <input type="hidden" name="type" value="ok">
                        <input type="hidden" name="ipintype" value="">
                        <input type="hidden" name="brandcode" value="">
                        <input type="hidden" name="first" value="">
                        <input type="hidden" name="data_third_party_agree" value="">
                        <input type="hidden" name="data_trust_agree" value="">
                        <input type="hidden" name="data_privacy_agree" value="">
                        <input type="hidden" name="realname">
                        <input type="hidden" name="encdata">
                        <input type="hidden" name="member_type" value="PERSON">
                     </form>
                      <form name="form1" method="post" id="join_form" action="/shop/idinfo.html" enctype="multipart/form-data" autocomplete="off">
                         <input type="hidden" name="resno" value="9203032000000">
                         <input type="hidden" name="cur_page" value="">
                         <input type="hidden" name="brandcode" value="">
                         <input type="hidden" name="sslid" value="label55">
                         <input type="hidden" name="sslip" value="www.secretlabel.co.kr">
                         <input type="hidden" name="haddress" id="haddress" value="">
                         <input type="hidden" name="msecure_key" value="">
                         <input type="hidden" name="loginkeyid" value="10c9f43646588e8d7ae5e369022b973b">
                         <input type="hidden" name="idcheck" value="">
                         <input type="hidden" name="emailcheck">
                         <input type="hidden" name="junk_member_ok" value="">
                         <input type="hidden" name="hiddenres" value="2670b14728ad9902aecba32e22fa4f6bd">
                         <input type="hidden" name="mem_type" value="PERSON">
                         <input type="hidden" name="member_join_type" value="NEW">
                         <input type="hidden" name="member_join_minor" value="N">
                         <input type="hidden" name="use_company_num" value="Y">
                         <input type="hidden" name="company_num_modify" value="N">
                         <input type="hidden" name="admin_type" value="N">
                         <input type="hidden" name="old_company_num1" value="">
                         <input type="hidden" name="old_company_num2" value="">
                         <input type="hidden" name="old_company_num3" value="">
                         <input type="hidden" name="old_email" id="old_email" value="agui36@hanmail.net">
                         <input type="hidden" name="etc_phone" id="etc_phone" value="010-9028-5607">
                         <input type="hidden" name="simple_login" value="Y">
                         <input type="hidden" name="app_os" value="">
                         <input type="hidden" name="type" value="upd">
                         <input type="hidden" name="reurl" value="">						
						<!-- 일반회원 기본 노출 -->
            <div id="personInfo">
                <ul class="cb_clear" :before>
                    <li class="txt">
                        <table class="person-tb">
                            <colgroup>
                               <col width="170">
                               <col width="*">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>
                                        <div>
                                            <span class="fc_brown">*</span> 이름
                                        </div>
                                    </th>
                                    <td>
                                        <div>
                                            <input type="text" name="" id="" value="" class="MS_input_txt w180" size="15" maxlength="30" disabled>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                   <th>
                                       <div>
                                           <span class="fc_brown">*</span> 아이디
                                       </div>
                                   </th>
                                   <td>
                                       <div>
                                           <input type="hidden" name="id" id="id" value="">
                                       </div>
                                   </td> 
                                </tr>
                                <tr>
                                    <th>
                                        <div>
                                            <span class="fc_brown">*</span> 비밀번호
                                        </div>
                                    </th>
                                    <td>
                                        <div>
                                            <input type="password" name="password1" id="password1" class="MS_input_txt w180" value size="15" maxlength="20" onkeyup="check_pwd_length(this,'password');">
                                            <span class="fs_11 fc_gray8 fs_11 fc_gray8 margin_l10"> - 영문 대소문자/숫자/특수문자를 혼용하여 2종류 10~16자 또는 3종류 8~16자</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <div>
                                            <span class="fc_brown">*</span> 비밀번호 확인
                                        </div>
                                    </th>
                                    <td>
                                        <div>
                                            <input type="password" name="password2" id="password2" class="MS_input_txt w180" value size="15" maxlength="20" onkeyup="check_pwd_length(this,'password');">
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <div>
                                            <span class="fc_brown">*</span> 생년월일
                                        </div>
                                    </th>
                                    <td>
                                        <div class="custom_select cb_clear " style="margin-left: -251px;">
                                           <div>
                                            <input type="text" name="year" value="year" style="display:inline-block;"> 년
                                            <input type="text" name="month" value="month" style="display:inline-block;"> 생
                                            <input type="text" name="day" value="day" style="display:inline-block;"> 일
                                           </div>
                                         </div>
                                      </td>  
                                  </tr>
                                  <tr>
                                     <th>
                                        <div>
                                            <span class="fc_brown">*</span> 성별
                                        </div>
                                      </th>
                                      <td>                                   
                                         <div style="margin-left: -660px;">
                                            <input type="radio" name="sex" value="1" class="MS_radio" style="display: inline-block;">남
                                            &nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" name="sex" value="2" class="MS_radio" style="display: inline-block;"> 여
                                         </div> 
                                       </td>  
                                </tr>
                                <tr>
                                    <th class="arr_line">
                                        <div>
                                            <span class="fc_brown">*</span> 주소
                                        </div>
                                    </th>
                                    <td>
                                        <div class="arr_line">
                                            <ul>
                                                <li class="input_num" style="margin-left: -507px;">
                                                    <input type="text" name="hpost1" form="join_form" id="hpost1" class="MS_input_txt" value="" size="3" maxlength="3" onfocus="this.blur();" style="display:inline-block;">
                                                       -
                                                       <input type="text" name="hpost2" form="join_form" id="hpost2" class="MS_input_txt" value="" size="3" maxlength="3" onfocus="this.blur();" style="display:inline-block;">
                                                       <span>
                                                        <a href="javascript:post(1);" class="submit_button" alt="우편번호검색">우편번호 검색</a>
                                                       </span>   
                                                </li>
                                                <li>
                                                    <input type="text" name="haddress1" form="join_form" id="haddress1" class="MS_input_txt w600" value="" size="40" maxlength="100" readonly="readonly">
                                                </li>
                                                <li class="margin_none">
                                                    <input type="text" name="haddress2" form="join_form" id="haddress2" class="MS_input_txt w600" value="" size="40" maxlength="100">
                                                </li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <div><span class="fc_brown">*</span> 연락처
                                        </div>
                                    </th>
                                    <td>
                                        <div>
                                                <input type="text" name="hphone" form="join_form" id="hphone" class="MS_input_tel w180" size="15" maxlength="30" value="">												
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <div><span class="fc_brown">*</span> 이메일
                                        </div>
                                    </th>
                                    <td>
                                        <div>
                                                <input type="hidden" name="oldemail" value="agui36@hanmail.net" >
                                                <input type="text" name="email" id="email" class="MS_input_txt MS_input_txt06 w180" size="20" maxlength="35" value="" onchange="this.form.emailcheck.value=''">
                                        </div>        
                                    </td>
                                </tr>
                                <tr>
                                  <th>
                                    <div><span class="fc_brown">*</span> 휴대폰</div>
                                  </th>
                                <td>
                                    <div>
                                        <input type="text" name="etcphone" form="join_form" id="etcphone" class="MS_input_tel w180" size="15" maxlength="30" value="">												
                                    </div>
                                </td>
                            </tr>
                                
                          </tbody>
                        </table>
                    </li>
                </ul>
            </div>
            <!-- #personInfo -->
            <div style="padding-top: 9px; padding-right: 50px;">
                <button style="height: 35px; width: 140px; border-radius: 3px;  padding:0px; padding-bottom:2px;">
                   <a href="mypage.jsp" style="width:100%; color:#fff; font-size: 11px; ">
                       <strong>수정</strong></a>
                 </button>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <button style="height: 35px; width: 140px; border-radius: 3px;  padding:0px; padding-bottom:2px;">
                    <a href="mypage.jsp" style="width:100%; color:#fff; font-size: 11px; ">
                    <strong>삭제</strong></a>
                 </button>
            </div>
        </form>
    </div>
    <!-- .SMP-container -->
				</div>
				<!-- #join -->
            </div>
            <!-- #content -->
        </div>
        <!-- #contentWrap -->
    </div>
    
    
<%@ include file="../common/footer.jsp" %>
<%@ include file="../common/BacktoTop.jsp" %>

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
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
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/slick/slick.min.js"></script>
	<script src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script src="vendor/parallax100/parallax100.js"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
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
	<script src="vendor/isotope/isotope.pkgd.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/sweetalert/sweetalert.min.js"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal("찜 완료!"/* nameProduct */, "관심 상품에 추가되었습니다!", "success");

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
	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
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
	<script src="js/main.js"></script>
  
    
    
</body>
</html>