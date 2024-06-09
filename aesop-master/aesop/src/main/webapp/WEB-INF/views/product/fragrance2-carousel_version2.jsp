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
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>향수</title> 
	
<!-- 	그냥 예비로 남겨둔 페이지입니다 -->
	
	<jsp:include page="../include/head.jsp"></jsp:include>
	<style>
		main {
			margin-top: 100px;
		}
		#mainsection{
			height: 900px;
		}
		.fr-prev::after, .fr-next::after {
            font-family: 'FontAwesome';
            font-size: 18px;
        }
        .fr-prev::after { content: '\f104'; /* FontAwesome 왼쪽 화살표 아이콘 */ }
        .fr-next::after { content: '\f105'; /* FontAwesome 오른쪽 화살표 아이콘 */ }
        .fr-carousel {
            height: 300px;
            width: 100%;
            position: relative;
            overflow: hidden;
        }
        .fr-container {
            display: flex;
            position: relative; /* 부모 요소의 기준으로 자식 요소를 배치하기 위해 position 속성 추가 */
            transition: transform 0.5s ease;
            width: 100%;
        }
        .fr-cell {
            width: 180px;
            height: 300px;
            display: inline-block;
            overflow: hidden;
            transition: 0.5s;
        }
        .fr-cell img { 
        	opacity: 0.5;
            height: 100%;
            transition: 0.5s;
        }
        .fr-cell.active img {
            opacity: 1; /* 활성화된 이미지의 투명도 */
        }
        .fr-cell.active {
        	transform: scale(1.1); /* 활성화된 이미지를 좀 더 크게 표시 */
        }
        .button-container {
            position: absolute;
            width: 100%;
            display: flex;
            justify-content: space-between;
            z-index: 50;
        }
        .fr-prev, .fr-next {
            background: none;
            border: none;
            font-size: 24px;
            cursor: pointer;
            position: absolute;
        }
        .fr-prev { left: calc(50% - 100px); /* 중앙 이미지의 왼쪽 */ }
        .fr-next { right: calc(50% - 100px); /* 중앙 이미지의 오른쪽 */ }
        .fr-prev:focus, .fr-next:focus { outline: none; }

        /* Media queries for responsive design */
        @media screen and (min-width: 1200px) {
            
        }
        @media screen and (max-width: 1440px) {
            
        }
	</style>
</head>
<body>
	<div class="content">
		<header>
			<jsp:include page="../include/header.jsp"></jsp:include>
		</header>
		<main>
		<section id="topmain">
                <div class="text25">향수</div>
                <div><p>이솝의 바디와 핸드 제품은 효과적인 클렌징, 수분 공급, 퍼스널 케어에 따른 고민 완화 등 일상적일 수 있는 경험을 한층 풍성하게 만들어줍니다.</p></div>
            </section>
            <section id="categorysection">
                <div id="category-All">모든 향수</div>
                <nav id="categorylist">
                    <ul>
                        <li><a href="">플로럴</a></li>
                        <li><a href="">프레쉬</a></li>
                        <li><a href="">우디</a></li>
                        <li><a href="">오퓰런트</a></li>
                    </ul>
                </nav>
            </section>
            <section id="mainsection">
                <div id="explore_wrap">
                    <div class="tex25">유형별 제품 탐색하기</div>
                    <div id="explore">
                        <div class="ex-item">
                            <img src="" alt="">
                            <div class="ex-itemname">플로럴</div>
                        </div>
                        <div class="ex-item">
                            <img src="" alt="">
                            <div class="ex-itemname">프레쉬</div>
                        </div>
                        <div class="ex-item">
                            <img src="" alt="">
                            <div class="ex-itemname">우디</div>
                        </div>
                        <div class="ex-item">
                            <img src="" alt="">
                            <div class="ex-itemname">오퓰런트</div>
                        </div>
                    </div>
                </div>
                <div class="text-ofl">Compare our Fragrances</div>
                <div class="fr-carousel_wrap">
                    <div class="fr-carousel">
                        <div class="button-container">
                            <button class="fr-prev"></button>
                            <button class="fr-next"></button>
                        </div>
                        <ul class="fr-container">
                            <li class="fr-cell" aria-current="" data-index="0"><img src="${path2 }/resources/images/product/fragrance/Tacit.png" alt="테싯"></li>
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
                            <li class="note-Comparison-info" aria-current="" data-index="0">
                            	<h3>테싯 오 드 퍼퓸</h3>
                            	<p>유자, 베티버, 바질</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                            <li class="note-Comparison-info" aria-current="" data-index="0">
                            	<h3>테싯 오 드 퍼퓸</h3>
                            	<p>유자, 베티버, 바질</p>
                            	<p>2사이즈</p>
                            	<p>170,000부터</p>
                            </li>
                        </ul>
                </div>
            </section>
        </main>
        
	    <script>
	    document.addEventListener('DOMContentLoaded', function() {
            const carousel = document.querySelector('.fr-carousel');
            const container = document.querySelector('.fr-container');
            const prevButton = document.querySelector('.fr-prev');
            const nextButton = document.querySelector('.fr-next');
            const slides = document.querySelectorAll('.fr-cell');

            let currentIndex = 0;

            // Initialize carousel
            function initCarousel() {
                showSlide(currentIndex);
            }

            // Show slide based on index
            function showSlide(index) {
			    // 이전에 활성화된 슬라이드의 active 클래스를 제거합니다.
			    const activeSlide = document.querySelector('.fr-cell.active');
			    if (activeSlide) {
			        activeSlide.classList.remove('active');
			        activeSlide.setAttribute('aria-current', 'false'); // 이전에 사용된 aria-current 속성을 false로 설정
			    }
			
			    // 새로운 슬라이드를 활성화하고 active 클래스를 추가합니다.
			    const selectedSlide = slides[index];
			    selectedSlide.classList.add('active');
			    selectedSlide.setAttribute('aria-current', 'true'); // 새로운 슬라이드에 aria-current 속성을 true로 설정
			
			    // 새로운 슬라이드가 중앙에 오도록 fr-container를 이동합니다.
			    const containerWidth = container.offsetWidth;
			    const slideWidth = selectedSlide.offsetWidth;
			    const slideLeft = selectedSlide.offsetLeft;
			    const offset = -(slideLeft - (containerWidth / 2 - slideWidth / 2));
			    container.style.transform = `translateX(${offset}px)`;
			}
			
            // Event listeners for previous and next buttons
            prevButton.addEventListener('click', function() {
                currentIndex = (currentIndex > 0) ? currentIndex - 1 : slides.length - 1;
                showSlide(currentIndex);
            });

            nextButton.addEventListener('click', function() {
                currentIndex = (currentIndex < slides.length - 1) ? currentIndex + 1 : 0;
                showSlide(currentIndex);
            });

            // Initialize carousel
            initCarousel();
        });
	    </script>
		
		<footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
	</div>	
</body>
</html>