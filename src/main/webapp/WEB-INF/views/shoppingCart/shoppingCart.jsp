<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link href="${pageContext.request.contextPath}/assets/css/reset3.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/shoppingCart.css" rel="stylesheet" type="text/css">

<!-- Axios 라이브러리 포함 -->
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
</head>

<body>
	<div id="wrap">

		<!-- header + nav -->
		<c:import url="/WEB-INF/views/include/header.jsp"></c:import>

		<!-- ---------------------------------------------  내용 시작 ------------------------------------------------------- -->

		<div id="cart-content" class="clearfix">
			<!-- aside 없음 -->
			<div id="full-content">

				<h1>장바구니</h1>
				<c:forEach items="${requestScope.shoppingList}" var="ShoppingcartVo">
					<div>
						<!-- 고른상품 반복 -->
						<div class="selectProduct">

							<div class="product-info">

								<img id="img1" src="${pageContext.request.contextPath}/Kream_products_imgs/${ShoppingcartVo.saveName}" alt="prodImg"
									style="width: 140px; background-color: #f0efef;" />

								<div class="content">
									<p class="product-nameE">${ShoppingcartVo.engName}</p>
									<p class="product-nameK">${ShoppingcartVo.korName}</p>
									<p class="modelNum">${ShoppingcartVo.modelNo}</p>
									<p id="p-${ShoppingcartVo.cartNo}" class="size">${ShoppingcartVo.prodSize}</p>
								</div>
								<!-- //content -->

								<div class="clear"></div>

							</div>
							<!-- //product-info -->


							<!-- 버튼 두개 (옵션, 삭제) -->
							<div class="btn2">
								<button id="cartNo" class="btnOption" type="button" name="prodSize" data-cartno="${ShoppingcartVo.cartNo}">사이즈 변경</button>
								<form action="${pageContext.request.contextPath}/shoppingcart/delete" method="get">
									<button class="btnDelete" type=submit>장바구니에서 삭제</button>
									<input type="hidden" name="cartNo" value="${ShoppingcartVo.cartNo}" />
								</form>
							</div>

							<!-- //btn2 -->

							<div class="expect-price clearfix">
								<div class="expect-priceL">
									<p>예상 결제금액</p>
								</div>
								<div class="expect-priceR">
									<p>${ShoppingcartVo.prodPrice}</p>
								</div>
							</div>
							<!-- //expect-price -->
							<!-- Hidden inputs for JavaScript to access -->
							<input type="hidden" class="userNo" value="${ShoppingcartVo.userNo}"> <input type="hidden" class="prodNo" value="${ShoppingcartVo.prodNo}">
							<input type="hidden" class="prodPrice" value="${ShoppingcartVo.prodPrice}"> <input type="hidden" class="prodSize"
								value="${ShoppingcartVo.prodSize}">
						</div>
					</div>
				</c:forEach>
				<!-- //selectProduct -->

				<!-- 선택주문정보 -->
				<div id="selectInfo">
					<div class="total-text">
						<p>선택 주문정보</p>
					</div>
					<div class="clear"></div>

					<div class="totalExpect-price">
						<div class="totalExpect-priceL">
							<p>총 예상 결제금액</p>
						</div>
						<div class="totalExpect-priceR">
							<p>${shoppingList[0].totalPrice}원</p>
						</div>
					</div>

				</div>
				<!-- //selectInfo -->

				<div id="orderDescription">
					<ol>
						<li>배송 방법 및 쿠폰/포인트 적용 여부는 결제 시 선택할 수 있습니다.</li>
						<li>총 결제금액은 배송 방법 및 쿠폰/포인트 적용 여부에 따라 달라질 수 있습니다.</li>
						<li>예상 결제금액은 기본 배송 방법 및 일반 결제로 주문했을 때의 가격입니다.</li>
						<li>장바구니에는 KREAM 배송 상품과 브랜드 배송 상품을 각각 최대 30개까지 담을 수 있으며, 상품은 최대 30일까지 보관됩니다.</li>
					</ol>
				</div>

				<a href="${pageContext.request.contextPath}/paymentform" class="btnOrder">${shoppingList[0].totalPrice}원·총${totalCnt}건주문하기</a>

			</div>
			<!-- //full-content -->


		</div>
		<!-- //cart-content -->

		<!-- ---------------------------------------------  내용 끝 ------------------------------------------------------- -->
		<!-- footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

		<!--모달창 -->
		<div id="buy-modal">
			<div class="purchase-modal" id="purchaseModal">
				<div class="modal-header">
					<h1>사이즈 변경</h1>
					<button class="close-btn" type="button">&times;</button>
				</div>

				<div class="product-info">
					<img id="img2" src="" alt="shoes" />
					<div>
						<h2 id="eng-name">영문명</h2>
						<p id="kor-name" class="product-id">한글명</p>
						<p id="model-no" class="product-id">모델번호</p>
					</div>
				</div>
				<input type="text" id="selectCartNo" value="">
				<div class="size-grid">
					<!-- 사이즈 버튼들 -->
					<button id="size230" class="size-box" data-prodsize="230">230</button>
					<button id="size235" class="size-box" data-prodsize="235">235</button>
					<button id="size240" class="size-box" data-prodsize="240">240</button>
					<button id="size245" class="size-box" data-prodsize="245">245</button>
					<button id="size250" class="size-box" data-prodsize="250">250</button>
					<button id="size255" class="size-box" data-prodsize="255">255</button>
					<button id="size260" class="size-box" data-prodsize="260">260</button>
					<button id="size265" class="size-box" data-prodsize="265">265</button>
					<button id="size270" class="size-box" data-prodsize="270">270</button>
					<button id="size275" class="size-box" data-prodsize="275">275</button>
					<button id="size280" class="size-box" data-prodsize="280">280</button>
				</div>
			</div>
		</div>
		<!--//모달창-->

	</div>
	<!-- //wrap -->

	<script>
	document.addEventListener("DOMContentLoaded", function() {

	    // 모달창 띄우기 이벤트
	    let btnOptions = document.querySelectorAll(".btnOption");
	    for (let i = 0; i < btnOptions.length; i++) {
	        btnOptions[i].addEventListener('click', callModal);
	    }

	    // 모달창 닫기 버튼 클릭이벤트 등록
	    let closeBtn = document.querySelectorAll('.close-btn');
	    for (let i = 0; i < closeBtn.length; i++) {
	        closeBtn[i].addEventListener('click', closeModal);
	    }

	    // 사이즈 버튼 클릭 이벤트
	    let sizeButtons = document.querySelectorAll(".size-box");
	    for (let i = 0; i < sizeButtons.length; i++) {
	        sizeButtons[i].addEventListener('click', ButtonClick);
	    }

	});

	// 모달창 띄우기
	function callModal(event) {
	    // 버튼에서 부모 요소로 이동하여 필요한 정보를 가져옴
	    let productDiv = event.target.parentElement.parentElement; // .selectProduct div 요소로 이동
	    let imgTag = productDiv.querySelector('#img1');
	    let nameTag1 = productDiv.querySelector('.product-nameE');
	    let nameTag2 = productDiv.querySelector('.product-nameK');
	    let modelNoTag = productDiv.querySelector('.modelNum');

	    let modaImg = document.querySelector('#img2');			
	    let name1 = document.querySelector('#eng-name');
	    let name2 = document.querySelector('#kor-name');
	    let modelNo = document.querySelector('#model-no');

	    modaImg.src = imgTag.src;
	    name1.textContent = nameTag1.textContent;
	    name2.textContent = nameTag2.textContent;
	    modelNo.textContent = modelNoTag.textContent;
	    
	    // 선택한 카트번호
	    let cartNo = event.target.getAttribute('data-cartno'); // 버튼의 data-cartno 속성에서 카트 번호 가져오기
	    let selectCartNo = document.querySelector('#selectCartNo');
	    
	    selectCartNo.value = cartNo; // 카트 번호를 히든 인풋에 저장
	    console.log(selectCartNo.value);
	    
	    // 모달창 보이게하기
	    let modalTag = document.querySelector('#buy-modal');
	    modalTag.style.display = 'block';
	}

	// 모달창 닫기
	function closeModal(event) {
	    let modalTag = document.querySelector('#buy-modal');
	    modalTag.style.display = 'none';
	}

	// 사이즈 버튼 클릭 시
	function ButtonClick(event) {
	    let selectedSize = event.target.dataset.prodsize; // 선택한 사이즈 가져오기
	    let cartNo = document.querySelector('#selectCartNo').value; // 선택한 카트 번호 가져오기

	    console.log("선택한 사이즈: " + selectedSize);
	    console.log("카트 번호: " + cartNo);

	    // 서버에 사이즈 업데이트 요청 보내기
	    updateSize(selectedSize, cartNo);

	    // 모달창 닫기
	    closeModal();
	}

	// 사이즈 업데이트 요청
	function updateSize(size, cartNo) {
	    // 전송
	    axios({
	        method: 'get', // put, post, delete
	        url: '${pageContext.request.contextPath}/api/shoppingcart/update',
	        headers: {"Content-Type" : "application/json; charset=utf-8"}, //전송타입
	        params: {
	            prodSize: size, // get 방식 파라미터로 값이 전달 
	            cartNo: cartNo // 카트 번호도 함께 전송
	        }, 
	        responseType: 'json' // 수신 타입
	    }).then(function (response) {
	        console.log(response.data); // 수신 데이터
	        
	        // 사이즈가 성공적으로 업데이트 되었으면 화면에서 해당 사이즈 업데이트
	        let sizeTag = document.querySelector('#p-' + cartNo); // 화면에 사이즈를 표시하는 태그 선택
	        console.log(sizeTag);
	        sizeTag.textContent = size; // 선택된 사이즈로 업데이트
	       
	    }).catch(function (error) {
	        console.log(error);
	    });
	}
		
	</script>

</body>

</html>