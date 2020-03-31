<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/sidebar.jsp" %>
<%@ include file="../common/cart.jsp" %>

<link rel="stylesheet" type="text/css" href="/brocoli/main/css/product_change.css">

<head>
<meta charset="UTF-8">
<title>product reject</title>
</head>
<body>
    <div id="orderSt">
    <p class="txt-date">
        <span>
            <strong>(회원이름)</strong>
            님께서 0000년 00월 00일 주문하신 내역입니다.
        </span>
    </p>
    <ul class="tab">
       <li>
         <div class="back">
           <div class="button_base b01_simple_rollover" style="padding-top:0px; height: 22px; width: 150px; border-radius: 3px;">
             <a href="product_change.jsp" style="width: 100%;">
               <strong>교환</strong>
             </a>
           </div>
         </div>
       </li>
       <li>
         <div class="back">
            <div class="button_base b01_simple_rollover" style="padding-top:0px; height: 22px; width: 150px; border-radius: 3px;">
              <a href="product_reject.jsp" style="width: 100%;">
               <strong>반품</strong>
               </a>
            </div>
         </div>
       </li>
    </ul>   
    <div id="orderInfo">
        <h2>주문자정보</h2>
        <div class="table-w table-orderinfo">
            <table summary>
                <caption>주문자정보</caption>
                <colgroup>
                   <col width="120">
                   <col width="*">
                   <col width="120">
                   <col width="*"> 
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row">
                            <div class="tb-center">주문번호</div>
                        </th>
                        <td>
                            <div class="tb-center">(주문번호)</div>
                        </td>
                        <th scope="row">
                            <div class="tb-center">주문일자</div>
                        </th>
                        <td>
                            <div class="tb-center">(주문일자)</div>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">
                            <div class="tb-center">주문자</div>
                        </th>
                        <td>
                            <div class="tb-center">(주문자)</div>
                        </td>
                        <th scope="row">
                            <div class="tb-center">주문서 입금현황</div>
                        </th>
                        <td>
                            <div class="tb-center">입금완료</div>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="row">
                            <div class="tb-center">주문 메모</div>
                        </th>
                        <td colspan="3">
                            <div class="tb-left"></div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <h2>배송지정보</h2>
        <div class="table-w table-region">
            <table summary>
                <caption>배송정보</caption>
                <colgroup>
                   <col width="120">
                   <col width="*">
                   <col width="120">
                   <col width="*"> 
                </colgroup>
                <tbody>
                   <tr>
                <th scope="row">
                    <div class="tb-center">배송번호</div>
                </th>
                <td>
                    <div class="tb-center">
                        (배송번호)
                    </div>
                </td>
                <th scope="row">
                    <div class="tb-center">송장번호</div>
                </th>
                 <td>
                     <div class="tb-center">
                         (송장번호)
                         <a href=""></a>
                     </div>
                 </td>
            </tr>
            <tr>
                <th scope="row">
                    <div class="tb-center">수취인</div>
                </th>
                <td>
                    <div class="tb-center">(수취인)</div>
                </td>
                <th scope="row">
                    <div class="tb-center">연락처</div>
                </th>
                <td>
                    <div class="tb-center">(연락처)</div>
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <div class="tb-center">주소</div>
                </th>
                <td colspan="3">
                    <div class="tb-left">(주소)</div>
                </td>
            </tr>
            <tr>
                <th scope="row">
                    <div class="tb-center">배송메세지</div>
                </th>
                <td colspan="3">
                    <div class="tb-left"></div>
                </td>
            </tr>
        </tbody>
       </table>
    </div>
    <h2>주문상품정보</h2>
    <div class="table-w table-prdinfo">
        <table summary>
            <caption>주문상품정보</caption>
            <colgroup>
              <col width="60">
              <col width="*">
              <col width="110">
              <col width="55">
              <col width="80">
              <col width="60">
              <col width="60">
              <col width="80">
            </colgroup>
           <thead>
               <tr>
                   <th scope="row" colspan="2">
                       <div class="tb-center">주문상품정보</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">상품별주문번호</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">수량</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">가격</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">적립</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">처리상태</div>
                   </th>
                   <th scope="row">
                       <div class="tb-center">배송번호</div>
                   </th>
               </tr>
           </thead>
           <tfoot>
               <tr>
                   <td colspan="8">
                       <div class="t-right">
                           (상품금액) + (배송료)(할인/추가금액) =(총금액)
                       </div>
                   </td>
               </tr>
           </tfoot>
          <tbody>
             <tr>
                  <td>
                       <div class="tb-center">(주문번호)</div> 
                  </td>
					<td colspan="2">
						<div style="float: left;">
							<img src="/brocoli/resources/product-Img/P11001.jpg" style="width: 58px; height: 78px;">
						</div>
						<div style="float: left;">
							<a href=""> (상품명) <br>
								</a> <span class="quantity order_table_Td style4"> 타입 : (상품색상 타입) </span>
						</div>
					</td>
					<td>
                      <div class="tb-center">(수량)</div>
                  </td>
                  <td>
                      <div class="tb-center tb-price">
                          <strong>
                              <font color="#FF5D00">(가격)</font>
                          </strong>
                          원
                      </div>
                  </td>
                  <td>
                      <div class="tb-center">
                          <span class="style4">0</span>
                      </div>
                  </td>
                  <td>
                      <div class="tb-center">거래완료(상태)</div>
                  </td>
                  <td>
                      <div class="tb-center">(배송번호)</div>
                  </td>
              </tr>
          </tbody>
        </table>
    </div>
    <h2>반품사유</h2>
    <div class="table-w table-orderinfo">
        <table summary>
            <caption>반품사유</caption>
            <colgroup>
               <col width="120">
               <col width="*">
               <col width="120">
               <col width="*"> 
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row">
                        <div class="tb-center">사유선택</div>
                    </th>
                    <td colspan="3">
                        <div class="tb-center">
                         <select>
                            <option value="선택">--선택--</option>
                            <option value="단순">단순변심</option>
                            <option value="불량">불량반품</option>
                          </select>  
                        </div>
                    </td>
                </tr>
                <tr>
                    <th scope="row">
                        <div class="tb-center">상세사유</div>
                    </th>
                    <td colspan="3">
                        <div class="tb-center">
                            <input type="text" id="reason" placeholder="상세 사유를 작성해주세요~" style="width: 700px; height: 100px;">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th colspan="row">
                        <div class="tb-center">신청일</div>
                    </th>
                    <td colspan="3">
                        <div class="tb-left">(신청날짜)</div>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div id="pop_order_btn_group">
        <button style="height: 35px; width: 97px; border-radius: 3px;">
        <a href="orderlist.jsp" style="width:100%; color:#fff;">신청완료</a>
        </button>
        &nbsp;&nbsp;
        <button style="height: 35px; width: 97px; border-radius: 3px;">
          <a href="orderlist.jsp" style="width:100%; color:#fff;">돌아가기</a>
        </button>
    </div>
</div>
</div>
</body>
</html>