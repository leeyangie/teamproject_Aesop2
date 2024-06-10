<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1f3107a968.js" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <title>향수</title>
    <jsp:include page="../include/head.jsp"></jsp:include>
    <style>
        main { margin-top: 100px;}
        .topmain {
		height: 360px;
		width: 100%;
		position: relative;
		overflow: hidden;
		}
		.topmain img { 
			width: 100%;
		    top: -60px;
		    position: absolute;
		}
		
		.topmain-text{
			z-index: 1;
			position: absolute;
			top: 100px;
			color : #fff;
		}
		
		.text25 {
			font-size: 25px;
			line-height: 3em;
			margin-left: 50px;
		}
		
		#explore-text {
			margin-top: 20px;
			margin-bottom:20px;
		}
		
		.text14 {
			margin-left: 50px;
			line-height: 1.5em;
		}
		
		.cate-navwrap {
			width: 100%;
			height : 70px;
			background-color: #EBEADE;
			display: flex;
			align-items: center;
			padding-left: 50px;
		}
		
		.catelist{
			display: flex;
		}
		
		.navbar-item {
			margin-right: 40px; /* 패딩 조정 */
			line-height: 2em;
		}
		
		.navbar-item:hover {
			border-bottom: 1px solid #252525;
		}
		
		.explore-tabwrap { 
			width: 100%;
			height: 280px;
			overflow: hidden;
			position: relative;
		}
			
		.explore-tab{
			width: 100%;
			display: grid;
			grid-template-columns: 20% 20% 20% 20% 20%;
		}
		
		.explore-tab2{
			width: 100%;
			display: grid;
			grid-template-columns: 25% 25% 25% 25%;
		}
		
		.explore-tabblock { 
			padding:1px;
			position: relative;
		}
	   
	    /* 마우스 오버 시 이미지 어둡게 */
	    
	    .overlay {
	        position: absolute;
	        top: 0;
	        left: 0;
	        width: 100%;
	        height: 100%;
	        background-color: rgba(0, 0, 0, 0.5);
	        opacity: 0;
	        transition: opacity 0.3s ease;
	        z-index: 0;
	    }
	
	    .explore-tabblock:hover>.overlay {
	        opacity: 1;
	    }
	    
		.explore-tabblock-tag {
			position: absolute;
			margin : 30px;
			color:#fff;
			font-weight: 500;
			z-index: 1;
		}
		
		.explore-tabblock-link {
			 position: relative;
		}
		
		.explore-tabblock-img img{
			width: 100%;
			display: block;
			transition: opacity 0.3s ease;		
		}
		
		.explore-tabblock:hover .overlay {
	        opacity: 1;
	    }
	    
	    .explore-tabblock:hover .explore-tabblock-img img { transform: scale (1.1);}
        .fr-prev::after, .fr-next::after {
            font-family: 'FontAwesome';
            font-size: 18px;
        }
        .fr-prev::after {
            content: '\f104'; /* FontAwesome 왼쪽 화살표 아이콘 */
        }
        .fr-next::after {
            content: '\f105'; /* FontAwesome 오른쪽 화살표 아이콘 */
        }
        .fr-carousel {
            height: 300px;
            width: 100%;
            position: relative;
            overflow: hidden;
            display: flex;
            align-items: center;
        }
        .fr-container {
            display: flex;
            height: 300px;
            transition: transform 0.5s ease;
        }
        .fr-cell {
            width: 180px;
            height: 300px;
            display: inline-block;
            overflow: hidden;
            position: relative;
        }
        .fr-cell img { 
            height: 100%; 
            transition: opacity 0.5s ease, transform 0.5s ease; /* 이미지 투명도 전환 애니메이션 */
        }
        .fr-cell.active img {
            transform: scale(1.1); /* 활성화된 슬라이드 이미지를 1.1배 커지도록 설정 */
        }
        .button-container {
            position: absolute;
            width: 100%;
            display: flex;
            justify-content: space-between;
        }
        .fr-prev, .fr-next {
            background: none;
            border: none;
            font-size: 24px;
            cursor: pointer;
            position: absolute;
        }
        .fr-prev {
            left: calc(50% - 290px); /* 중앙 이미지의 왼쪽 */
        }
        .fr-next {
            right: calc(50% - 290px); /* 중앙 이미지의 오른쪽 */
        }
        .fr-prev:focus, .fr-next:focus {
            outline: none;
        }
        #page2 {
		display: grid;
		grid-template-columns: 1fr 1fr;
		height: 120px;
		width: 100%;
		background-color: #EBE2D5;
		padding-top: 80px;
		padding-left : 50px;
		}
		
		.round-button { 
		    width: 110px;
		    height: 30px;
		    border-radius: 50px;
		    line-height: 2em;
		    border: 1px solid #252525;
		    margin-top: 20px;
		    text-align: center;
		}
        .round-button2 { 
		    width: 110px;
		    height: 30px;
		    border-radius: 50px;
		    line-height: 2em;
		    border: 1px solid #252525;
		    text-align: center;
		}
        
        @media (max-width: 1440px) {
			.topmain { height: 400px;}
			.topmain img {
				height: 100%;
				width: auto;
				top:0;
				right: -200px;
			}
		}
	
        
        
    </style>
</head>
<body>
	<div class="content">
			<!-- 헤더 부분 include -->
		 	<header id="header">
				<jsp:include page="../include/header.jsp"></jsp:include>
			</header> 
			<main class="contents">
			    <div class="topmain">
					<div class="topmain-text">
						<div class="text25">향수</div>
						<div class="text14">
							<p>이솝의 바디와 핸드 제품은 효과적인 클렌징, 수분 공급, 
							<br>퍼스널 케어에 따른 고민 완화 등 일상적일 수 있는 경험을 한층 풍성하게 만들어줍니다.</p>
						</div>
					</div>
					<img alt="향수" src="${path2 }/resources/images/product/fragrance/perfume.png">
					
				</div>
				<div class="cate-navwrap">
					<nav class="cate-nav">
						<ul class="catelist">
							<li><a href="${path2 }/product/listAll.do?category=p" class="navbar-item" title="전체" style="border-bottom: 1px solid #252525;">
			                    모든
			                    <c:if test="${not empty categoryName}">
							     	${categoryName}
							    </c:if>
			                </a></li>
			                <li><a href="${path2 }/product/list.do?category=p&category_sub=1" class="navbar-item ${category_sub eq '1' ? 'active' : ''}" title="샴푸">
			                    플로럴
			                </a></li>
			                <li><a href="${path2 }/product/list.do?category=p&category_sub=2" class="navbar-item ${category_sub eq '2' ? 'active' : ''}" title="컨디셔너">
			                    프레쉬
			                </a></li>
			                <li><a href="${path2 }/product/list.do?category=p&category_sub=3" class="navbar-item ${category_sub eq '3' ? 'active' : ''}" title="트리트먼트">
			                    우디
			                </a></li>
			                <li><a href="${path2 }/product/list.do?category=p&category_sub=4" class="navbar-item ${category_sub eq '4' ? 'active' : ''}" title="그루밍">
			                    오큘런트
			                </a></li>
			                 <c:if test="${semail.equals('admin@aesop.com') }">
				                <div class="round-button2"><li><a href="${path2 }/product/insert.do" class="button is-danger">상품 등록</a></li></div>
			                </c:if>
			            </ul>
					</nav>
				</div>
				<div class="text25" id="explore-text">유형별 제품 탐색하기</div>
				<div class="explore-tabwrap">
			        <div class="explore-tab2">
			            <div class="explore-tabblock">
			                <a class="explore-tabblock-link" href="">
			                	<div class="overlay"></div>
			                    <div class="explore-tabblock-tag">플로럴</div>
			                    <div class="explore-tabblock-img">
			                        <img alt="block1" src="${path2}/resources/images/product/fragrance/floral.png">
			                        <div class="overlay"></div>
			                    </div>
			                </a>
			            </div>
			            <div class="explore-tabblock">
			                <a class="explore-tabblock-link" href="">
			                    <div class="explore-tabblock-tag">프레쉬</div>
			                    <div class="explore-tabblock-img">
			                        <img alt="block2" src="${path2}/resources/images/product/fragrance/fresh.png">
			                        <div class="overlay"></div>
			                    </div>
			                </a>
			            </div>
			            <div class="explore-tabblock">
			                <a class="explore-tabblock-link" href="">
			                    <div class="explore-tabblock-tag">우디</div>
			                    <div class="explore-tabblock-img">
			                        <img alt="block3" src="${path2}/resources/images/product/fragrance/woody.png">
			                        <div class="overlay"></div>
			                    </div>
			                </a>
			            </div>
			            <div class="explore-tabblock">
			                <a class="explore-tabblock-link" href="">
			                    <div class="explore-tabblock-tag">오큘런트</div>
			                    <div class="explore-tabblock-img">
			                        <img alt="block4" src="${path2}/resources/images/product/fragrance/oculant.png">
			                        <div class="overlay"></div>
			                    </div>
			                </a>
			            </div>
			        </div>
			    </div>
                <div class="text-ofl">Compare our Fragrances</div>
                <div class="fr-carousel_wrap">
                    <div class="fr-carousel">
                        <!-- <div class="button-container">
                            <button class="fr-prev"></button>
                            <button class="fr-next"></button>
                        </div> -->
                        <ul class="fr-container">
                            <li class="fr-cell" data-index="0"><img src="${path2 }/resources/images/product/fragrance/Tacit.png" alt="테싯"></li>
                            <li class="fr-cell" data-index="1"><img src="${path2 }/resources/images/product/fragrance/Karst.png" alt="카르스트"></li>
                            <li class="fr-cell" data-index="2"><img src="${path2 }/resources/images/product/fragrance/Eremia.png" alt="에레미야"></li>
                            <li class="fr-cell" data-index="3"><img src="${path2 }/resources/images/product/fragrance/Gloam.png" alt="글롬"></li>
                            <li class="fr-cell" data-index="4"><img src="${path2 }/resources/images/product/fragrance/Rozu.png" alt="로즈"></li>
                            <li class="fr-cell" data-index="5"><img src="${path2 }/resources/images/product/fragrance/Marrakech.png" alt="마라케시"></li>
                            <li class="fr-cell" data-index="6"><img src="${path2 }/resources/images/product/fragrance/Hwyl.png" alt="휠"></li>
                            <li class="fr-cell" data-index="7"><img src="${path2 }/resources/images/product/fragrance/Eidesis.png" alt="이더시스"></li>
                            <li class="fr-cell" data-index="8"><img src="${path2 }/resources/images/product/fragrance/Miraceti.png" alt="미라세티"></li>
                            <li class="fr-cell" data-index="9"><img src="${path2 }/resources/images/product/fragrance/Ouranon.png" alt="우라논"></li>
                        </ul>
                    </div>
                </div>
                <div>
                	<ul class="note-Comparison">
                            <li class="note-Comparison-info" aria-current="" data-index="0">
                            	<h3>테싯 오 드 퍼퓸</h3>
                            	<p>유자, 베티버, 바질</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="1">
                            	<h3>카르스트 오 드 퍼퓸</h3>
			                	<p>주니퍼, 쿠민, 샌달우드</p>
			                	<p>50 mL</p>
			                	<p>225,000</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="2">
                            	<h3>에레미아 오 드 퍼퓸</h3>
                            	<p>갈바눔, 아이리스, 유자</p>
                            	<p>50 mL</p>
			                	<p>225,000</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="3">
                            	<h3>에레미아 오 드 퍼퓸</h3>
                            	<p>갈바눔, 아이리스, 유자</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="4">
                            	<h3>테싯 오 드 퍼퓸</h3>
                            	<p>유자, 베티버, 바질</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="5">
                            	<h3>테싯 오 드 퍼퓸</h3>
                            	<p>유자, 베티버, 바질</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="6">
                            	<h3>테싯 오 드 퍼퓸</h3>
                            	<p>유자, 베티버, 바질</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="7">
                            	<h3>테싯 오 드 퍼퓸</h3>
                            	<p>유자, 베티버, 바질</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="8">
                            	<h3>테싯 오 드 퍼퓸</h3>
                            	<p>유자, 베티버, 바질</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="9">
                            	<h3>테싯 오 드 퍼퓸</h3>
                            	<p>유자, 베티버, 바질</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                        </ul>
                </div>
            <section class="page" id="page1">
            	<div class="fr-imgwrap"><img alt="프레그런스" src="storefind.png"></div>
            </section>
            
			<section class="page" id="page2">
    			<div><p class="text-play" style="margin-left: 50px">For additional assistance</p></div>
    			<div>
    				<p>제품 선택에 보다 자세한 조언이 필요하시면 문의하기를 통해 도움을 받으세요.</p>
    				<div class="round-button">문의하기 </div>
    			</div>	    			
    		</section>
        </main>
        <footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
    </div>

    <script>
    $(document).ready(function() {
        const container = $('.fr-container');
        const cells = $('.fr-cell');
        const comparisonInfo = $('.note-Comparison-info');
        const cellWidth = cells.outerWidth();
        const totalCells = cells.length;
        let currentIndex = 0; // index 0이 기본으로 활성화

        function updateOpacity() {
            cells.each(function(index) {
                $(this).find('img').css('opacity', index === currentIndex ? '1' : '0.5');
            });
        }

        function updateActiveClass() {
            cells.removeClass('active'); // 모든 슬라이드의 active 클래스 제거
            cells.eq(currentIndex).addClass('active'); // 현재 인덱스의 슬라이드에 active 클래스 추가
        }

        function updateComparisonInfo() {
            comparisonInfo.each(function(index) {
                if (index === currentIndex) {
                    $(this).addClass('active').show(); // 현재 인덱스의 Comparison-info에 active 클래스 추가하고 표시
                } else {
                    $(this).removeClass('active').hide(); // 나머지 요소는 active 클래스 제거하고 숨김
                }
            });
        }

        function updateCarousel() {
            const offset = -(currentIndex * cellWidth - ($('.fr-carousel').width() / 2 - cellWidth / 2));
            container.css('transform', 'translateX(' + offset + 'px)');
            updateOpacity();
            updateComparisonInfo(); // 활성화된 슬라이드에 맞춰 Comparison info 업데이트
        }

        $('.fr-prev').click(function() {
            currentIndex = Math.max(currentIndex - 1, 0); // 한 칸씩 이동하도록 수정
            updateCarousel();
            updateActiveClass();
        });

        $('.fr-next').click(function() {
            currentIndex = Math.min(currentIndex + 1, totalCells - 1); // 한 칸씩 이동하도록 수정
            updateCarousel();
            updateActiveClass();
        });

        // fr-cell 클릭 시 활성화
        cells.click(function() {
            currentIndex = $(this).data('index');
            updateCarousel();
            updateActiveClass();
        });

        $(window).resize(function() {
            updateCarousel();
        });

        updateCarousel(); // 초기 상태 업데이트
        updateActiveClass(); // 초기 상태에서 active 클래스 추가
        updateComparisonInfo(); // 초기 상태에서 모든 Comparison-info 요소를 보여주고, 활성화된 요소만 업데이트
    });
    </script>

</body>
</html>