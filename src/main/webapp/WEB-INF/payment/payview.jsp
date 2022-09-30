<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment</title>
	<!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    
    <!-- bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/payment.css">
	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</head>
<body>
<div class="outer">
        <div id="inner1">
            <h3>선물 상품 정보</h3>
            <div class="gift-info row-type03">
                <div>
                    <img src="image/cake.jpg" alt="스트로베리 초콜릿 생크림" width="100px" ; height="100px">
                </div>
                <div class="gift-info-desc">
                    <span>투썸플레이스</span>
                    <p><strong>스트로베리 초콜릿 생크림</strong></p>
                    <p class="price">총 선물 수 <strong><span class="phoneCnt">0</span> 개</strong></p>
                </div>
                <div class="tag">

                </div>
            </div>
            <div class="row-type03">
                <div class="row-type04" id="point_box">
                    <h4>보유 포인트</h4>
                    <p class="form-type01 btn-area" id="point_box_area">
                        <span><em class="fc-01" id="gs_point">0</em> 원</span>
                        <a href="javascript:giftishowPointUse()" id="giftishowPointChk" class="btn-type-c">전액사용</a>
                        <input type="text" id="giftishowUsePoint" value="0">
                    </p>
                </div>

                <div class="row-type04" id="asiana_exist" style="display: none;">
                    <h4>아시아나클럽</h4>
                    <p class="form-type01 btn-area justify-cont align-c">
                        <em><span>회원번호 :</span><span id="asiana_user_no_text"></span></em>
                        <em>
                            <a href="javascript:openAsianaPop();" class="btn-type-c">변경</a>
                            <a href="javascript:deleteAsianaNo();" class="btn-type-c">삭제</a>
                        </em>
                    </p>
                </div>
                <div class="row-type04" id="asiana_not_exist" style="display: none;">
                    <h4>아시아나클럽</h4>
                    <p class="form-type01 btn-area justify-cont align-c">
                        <em><span>회원번호 :</span><span>아시아나클럽 회원번호를 등록해 주세요.</span></em>
                        <a href="javascript:openAsianaPop();" class="btn-type-c">등록</a>
                    </p>
                </div>
            </div>

            <div class="row-type03 ">
                <div data-v-8215c5a4="" class="section_title">
                    <h3 data-v-8215c5a4="" class="title_txt">결제 방법</h3>
                </div>
                <div data-v-8215c5a4="" class="section_content">
                    <div data-v-8215c5a4="" class="simple_payment">
                        <h4 data-v-8215c5a4="" class="method_title">
                            <div data-v-8215c5a4="" class="main_title">간편 결제 <span data-v-8215c5a4=""
                                    class="sub_title">일시불</span></div>
                        </h4>
                        <div data-v-29138675="" data-v-8215c5a4="" class="card_list">
                            <div data-v-29138675="" class="main_card disabled"><a data-v-29138675="" href="#"
                                    class="regist_link">
                                    <p>카드를 등록해주세요</p>
                                </a></div>
                            <div data-v-29138675="" class="other_card" style="display: none;">
                                <ul data-v-29138675="" class="other_card_list"></ul>
                            </div>
                        </div>
                    </div>
                    <div data-v-8215c5a4="" class="general_payment">
                        <h4 data-v-8215c5a4="" class="method_title">
                            <div data-v-8215c5a4="" class="main_title"><strong data-v-8215c5a4="">일반 결제</strong> <span
                                    data-v-8215c5a4="" class="sub_title">일시불・할부</span></div>
                        </h4>
                        <div data-v-35b707e2="" data-v-8215c5a4="" class="pay_method" id="card" value="html5_inicis">
                            <div data-v-35b707e2="" class="pay_item" id="normalpay">
                                <div data-v-35b707e2="" class="pay_box">
                                    <div data-v-35b707e2="" class="pay_title">
                                        <p data-v-35b707e2="" class="main_title">신용/체크카드</p>
                                    </div>
                                </div>
                            </div>
                            <div data-v-35b707e2="" class="pay_item" id="quickpay" value="html5_inicis">
                                <div data-v-35b707e2="" class="pay_box">
                                    <div data-v-35b707e2="" class="pay_title">
                                        <p data-v-35b707e2="" class="main_title">계좌이체</p>
                                    </div>
                                </div>
                            </div>
                            <div data-v-35b707e2="" class="pay_item" id="naverpay" value="html5_inicis">
                                <div data-v-35b707e2="" class="pay_box">
                                    <div data-v-35b707e2="" class="pay_title">
                                        <p data-v-35b707e2="" class="main_title">네이버페이</p>
                                    </div><img data-v-35b707e2="" src="image/naverpay.jpg" alt="네이버페이" class="pay_img">
                                </div>
                            </div>
                            <div data-v-35b707e2="" class="pay_item" id="kakaopay" value="kakaopay">
                                <div data-v-35b707e2="" class="pay_box">
                                    <div data-v-35b707e2="" class="pay_title">
                                        <p data-v-35b707e2="" class="main_title">카카오페이</p>
                                    </div><img data-v-35b707e2="" src="image/kakaopay.jpg" alt="카카오페이" class="pay_img">
                                </div>
                            </div>
                            <div data-v-35b707e2="" class="pay_item" id="tosspay" value="tosspay" >
                                <div data-v-35b707e2="" class="pay_box">
                                    <div data-v-35b707e2="" class="pay_title">
                                        <p data-v-35b707e2="" class="main_title">토스</p>
                                    </div><img data-v-35b707e2="" src="image/tosspay.jpg" alt="토스" class="pay_img">
                                </div>
                            </div>
                            <div data-v-35b707e2="" class="pay_item" id="paycopay" value="html5_inicis">
                                <div data-v-35b707e2="" class="pay_box">
                                    <div data-v-35b707e2="" class="pay_title">
                                        <p data-v-35b707e2="" class="main_title">페이코</p>
                                    </div><img data-v-35b707e2="" src="image/paycopay.jpg" alt="페이코" class="pay_img">
                                </div>
                            </div>
                        </div>
                        <div data-v-2e66a968="" data-v-8215c5a4="" class="pay_benefit">
                            <h5 data-v-2e66a968="" class="benefit_title">결제 혜택</h5>
                            <ul data-v-2e66a968="" class="benefit_list">
                                <li data-v-2e66a968="" class="benefit_item"><img data-v-2e66a968=""
                                        src="image/계좌이체.png"
                                        alt="계좌 이체" class="benefit_img">
                                    <p data-v-2e66a968="" class="benefit_desc"><span data-v-2e66a968="" class="blind">계좌
                                            이체</span>결제 시 최대 5만 포인트 적립 </p><a data-v-2e66a968="" href="" target="_blank"
                                        class="btn_more">더보기</a>
                                </li>
                                <li data-v-2e66a968="" class="benefit_item"><img data-v-2e66a968=""
                                        src="image/tosspay.jpg"
                                        alt="토스" class="benefit_img" >
                                    <p data-v-2e66a968="" class="benefit_desc"><span data-v-2e66a968=""
                                            class="blind">토스</span>첫 결제시 3천원 캐시백 </p><a data-v-2e66a968=""
                                        href="tosspay.jpg" target="_blank" class="btn_more">더보기</a>
                                </li>
                                <li data-v-2e66a968="" class="benefit_item"><img data-v-2e66a968=""
                                        src="image/paycopay.jpg"
                                        alt="페이코" class="benefit_img">
                                    <p data-v-2e66a968="" class="benefit_desc"><span data-v-2e66a968=""
                                            class="blind">페이코</span>페이코 포인트로 결제 시 5% 적립 </p><a data-v-2e66a968=""
                                        href="paycopay.jpg" target="_blank" class="btn_more">더보기</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row-type03 ">
                <div class="acco-single _acco">
                    <div class="acco-tt">
                        <div class="cbWrap">
                            <input type="checkbox" id="buy_agree">
                            <label for="buy_agree"><i></i> <strong><span class="fc-01">[필수]</span> 구매확인 및
                                    동의</strong></label>
                        </div>
                        <a href="#" class="trigger"><i class="btn-acco closed"></i></a>
                    </div>
                    <div class="acco-cont">
                        <div>
                            구매하시는 상품의 정보 및 가격, 배송정보를 확인하였으며, 구매에 동의하십니까?<br>
                            [전자상거래법 제8조 제2항]
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="inner2">
            <div class="box-type01">
                <h3>최종 결제 금액</h3>
                <table class="t-head">
                    <tbody>
                        <tr>
                            <th>상품 금액</th>
                            <td><strong id="total_sale_price">36,000</strong> 원</td>
                        </tr>
                        <tr>
                            <th>할인 금액</th>
                            <td><span id="payDetail_discount">-0</span> 원</td>
                        </tr>
                        <tr>
                            <th>포인트</th>
                            <td><span id="payDetail_gspoint">-0</span> 원</td>
                        </tr>
                    </tbody>
                </table>
                <table class="t-foot">
                    <tbody id="pay_method_name">
                        <tr>
                            <th>결제 수단</th>
                            <td id="pg_name">신용카드</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>결제 금액</th>
                            <td><strong id="final_price">36,000</strong> 원</td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div class="btn-type02" id="paying">결제</div>
        </div>
    </div>
    
	<!-- <div>
		<h2>IAMPORT 결제</h2>
 		<li>
			<button id="iamportPayment" type="button">카카오페이 결제</button>
		</li>

		<li>
			<button id="iamportPayment2" type="button">휴대폰 결제</button>
		</li> 
		<li>
			<button id="iamportPayment3" type="button">KG이니시스</button>
		</li>
		<li>
			<button id="iamportPayment4" type="button">토스</button>
		</li>
	</div> -->
	
<script type="text/javascript">
/*$(document).ready(function(){ 
 	 $("").click(function(){ 
    	payment(); //버튼 클릭하면 호출 
    }); 
 	 
	$("#iamportPayment2").click(function(){ 
		danal();
    }); 
 	 
	$("").click(function(){ 
		kg();
    }); 
	$("").click(function(){ 
		toss();
    }); 
})*/

 //버튼 클릭하면 실행
function payment(data) {
    IMP.init('imp20164668');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
    IMP.request_pay({// param
        pg: "kakaopay.TC0ONETIME", //pg사명 or pg사명.CID (잘못 입력할 경우, 기본 PG사가 띄워짐)
        pay_method: "card", //지불 방법
        merchant_uid: "1111", //가맹점 주문번호 (아임포트를 사용하는 가맹점에서 중복되지 않은 임의의 문자열을 입력)
        name: "음식", //결제창에 노출될 상품명
        amount: 100, //금액
        buyer_email : "testiamport@naver.com", 
        buyer_name : "홍길동",
        buyer_tel : "01012341234"
    }, function (rsp) { // callback
        if (rsp.success) {
            alert("완료 -> imp_uid : "+rsp.imp_uid+" / merchant_uid(orderKey) : " +rsp.merchant_uid);
            jQuery.ajax({
                url: "test.action",
                method: "POST",
  			dataType:"json",
                data: {
                    "imp_uid": rsp.imp_uid,
                    "merchant_uid": rsp.merchant_uid,
                    "name" : rsp.name,
                    "amount" : rsp.paid_amount,
                    "buyer_name" : rsp.buyer_name,
                    "pg" : rsp.pg_provider,
                    "pay_method" : rsp.pay_method
                	}
                });
         } else {
             alert("실패 : 코드("+rsp.error_code+") / 메세지(" + rsp.error_msg + ")");
             var msg = "결제에 실패했습니다"
             msg = "에러내용:" + rsp.error_msg;
             
             alert(msg);
         }
     });
}
/*
function danal(data) {
	IMP.init('imp20164668');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
	IMP.request_pay({
		pg : 'nice',
	    pay_method : 'phone',
	    merchant_uid: "0003", //상점에서 생성한 고유 주문번호
	    name : '주문명:결제테스트',
	    amount : 1000,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456'
	}, function (rsp) { // callback
        if (rsp.success) {
            alert("완료 -> imp_uid : "+rsp.imp_uid+" / merchant_uid(orderKey) : " +rsp.merchant_uid);
            jQuery.ajax({
                url: "test.action",
                method: "POST",
  			dataType:"json",
                data: {
                    "imp_uid": rsp.imp_uid,
                    "merchant_uid": rsp.merchant_uid,
                    "name" : rsp.name,
                    "amount" : rsp.paid_amount,
                    "buyer_name" : rsp.buyer_name,
                    "pg" : rsp.pg_provider,
                    "pay_method" : rsp.pay_method
                	}
                });
         } else {
             alert("실패 : 코드("+rsp.error_code+") / 메세지(" + rsp.error_msg + ")");
             var msg = "결제에 실패했습니다"
             msg = "에러내용:" + rsp.error_msg;
             
             alert(msg);
         }
     });
}

*/
function kg(data) {
	IMP.init('imp20164668');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
	IMP.request_pay({
		pg : 'html5_inicis',
	    pay_method : 'card',
	    merchant_uid: "0003", //상점에서 생성한 고유 주문번호
	    name : '주문명:결제테스트',
	    amount : 100,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456'
	}, function (rsp) { // callback
        if (rsp.success) {
            alert("완료 -> imp_uid : "+rsp.imp_uid+" / merchant_uid(orderKey) : " +rsp.merchant_uid+ "/ name : "+rsp.name);
            
            jQuery.ajax({
                url: "test.action",
                method: "POST",
  			dataType:"json",
                data: {
                    "imp_uid": rsp.imp_uid,
                    "merchant_uid": rsp.merchant_uid,
                    "name" : rsp.name,
                    "amount" : rsp.paid_amount,
                    "buyer_name" : rsp.buyer_name,
                    "pg" : rsp.pg_provider,
                    "pay_method" : rsp.pay_method
                	}
                });
         } else {
             alert("실패 : 코드("+rsp.error_code+") / 메세지(" + rsp.error_msg + ")");
             var msg = "결제에 실패했습니다"
             msg = "에러내용:" + rsp.error_msg;
             
             alert(msg);
         }
     });
}
 
function toss(data) {
	IMP.init('imp20164668');//아임포트 관리자 콘솔에서 확인한 '가맹점 식별코드' 입력
	IMP.request_pay({
		pg : 'tosspay',
	    pay_method : 'card',
	    merchant_uid: "1111", //상점에서 생성한 고유 주문번호
	    name : '주문명:결제테스트',
	    amount : 100,
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울특별시 강남구 삼성동',
	    buyer_postcode : '123-456'
}, function (rsp) { // callback
      if (rsp.success) {
    	  
          alert("완료 -> imp_uid : "+rsp.imp_uid+" / merchant_uid(orderKey) : " +rsp.merchant_uid+ "/ amount : "+rsp.amount);
          
          jQuery.ajax({
              url: "test.action",
              method: "POST",
			dataType:"json",
              data: {
                  "imp_uid": rsp.imp_uid,
                  "merchant_uid": rsp.merchant_uid,
                  "name" : rsp.name,
                  "amount" : rsp.paid_amount,
                  "buyer_name" : rsp.buyer_name,
                  "pg" : rsp.pg_provider,
                  "pay_method" : rsp.pay_method
              	}
              });
       } else {
           alert("실패 : 코드("+rsp.error_code+") / 메세지(" + rsp.error_msg + ")");
           var msg = "결제에 실패했습니다"
           msg = "에러내용:" + rsp.error_msg;
           
           alert(msg);
       }
   });
}


var div2 = document.getElementsByClassName("pay_box");

function handleClick(event) {
    console.log(event.target);
    // console.log(this);
    // 콘솔창을 보면 둘다 동일한 값이 나온다

    console.log(event.target.classList);

    if (event.target.classList[1] === "clicked") {
        event.target.classList.remove("clicked");
    } else {
        for (var i = 0; i < div2.length; i++) {
            div2[i].classList.remove("clicked");
        }

        event.target.classList.add("clicked");
    }
}

function init() {
    for (var i = 0; i < div2.length; i++) {
        div2[i].addEventListener("click", handleClick);
        console.log(this)
    }
}

init();

 var payed = document.getElementById("paying");
payed.onclick = function () {
    const selected = document.querySelector('.pay_box.clicked').parentNode;
    const val = selected.getAttribute('value');
    
    if(val=='kakaopay'){
    	payment();
    }else if(val=='tosspay'){
    	toss();            	
    }else if(val=='html5_inicis'){
    	kg();
    }
} 
/* var payed = document.getElementById("paying");
payed.onclick = function () {
    const selected = document.querySelector('.pay_box.clicked').parentNode;
    console.log(selected);
    const val = selected.getAttribute('value');
    console.log(val);
}
 */
 </script>
</body>
</html>