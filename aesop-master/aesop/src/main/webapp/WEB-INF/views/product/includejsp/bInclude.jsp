<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />

	<div class="topmain">
		<div class="topmain-text">
			<div class="text25">바디&핸드</div>
			<div class="text14">
				<p>이솝의 바디와 핸드 제품은 효과적인 클렌징, 수분 공급, 퍼스널 케어에 따른 고민 완화 등
				<br>일상적일 수 있는 경험을 한층 풍성하게 만들어줍니다.</p>
			</div>
		</div>
		<img alt="바디&핸드" src="${path2 }/resources/images/product/handbody/handbody.png">
		
	</div>
	<div class="cate-navwrap">
		<nav class="cate-nav">
			<ul class="catelist">
				<li><a href="${path2 }/product/listAll.do?category=b" class="navbar-item" title="전체" style="border-bottom: 1px solid #252525;">
                    모든
                    <c:if test="${not empty categoryName}">
	                	${categoryName}
		            </c:if>
                </a></li>
                <li><a href="${path2 }/product/list.do?category=b&category_sub=1" class="navbar-item" title="핸드">
                    핸드
                </a></li>
                <li><a href="${path2 }/product/list.do?category=b&category_sub=2" class="navbar-item" title="바디">
                    바디
                </a></li>
                <li><a href="${path2 }/product/list.do?category=b&category_sub=3" class="navbar-item" title="퍼스널 케어">
                    퍼스널 케어
                </a></li>
                <li><a href="${path2 }/product/list.do?category=b&category_sub=4" class="navbar-item" title="번들">
                    번들
                </a></li>
                <li><a href="${path2 }/product/list.do?category=b&category_sub=5" class="navbar-item" title="핸드 및 바디 케어 기프트">
                    핸드 및 바디 케어 기프트
                </a></li>
                 <c:if test="${semail.equals('admin@aesop.com') }">
	                <div class="round-button2"><li><a href="${path2 }/product/insert.do" class="button is-danger">상품 등록</a></li></div>
                </c:if>
            </ul>
		</nav>
	</div>
	<div class="text25" id="explore-text">유형별 제품 탐색하기</div>
	<div class="explore-tabwrap">
        <div class="explore-tab">
            <div class="explore-tabblock">
                <a class="explore-tabblock-link" href="">
                	<div class="overlay"></div>
                    <div class="explore-tabblock-tag">핸드</div>
                    <div class="explore-tabblock-img">
                        <img alt="block1" src="${path2}/resources/images/product/handbody/hand.png">
                        <div class="overlay"></div>
                    </div>
                </a>
            </div>
            <div class="explore-tabblock">
                <a class="explore-tabblock-link" href="">
                    <div class="explore-tabblock-tag">바디</div>
                    <div class="explore-tabblock-img">
                        <img alt="block2" src="${path2}/resources/images/product/handbody/body.png">
                        <div class="overlay"></div>
                    </div>
                </a>
            </div>
            <div class="explore-tabblock">
                <a class="explore-tabblock-link" href="">
                    <div class="explore-tabblock-tag">퍼스널케어</div>
                    <div class="explore-tabblock-img">
                        <img alt="block3" src="${path2}/resources/images/product/handbody/personal.png">
                        <div class="overlay"></div>
                    </div>
                </a>
            </div>
            <div class="explore-tabblock">
                <a class="explore-tabblock-link" href="">
                    <div class="explore-tabblock-tag">번들</div>
                    <div class="explore-tabblock-img">
                        <img alt="block4" src="${path2}/resources/images/product/handbody/bundle.png">
                        <div class="overlay"></div>
                    </div>
                </a>
            </div>
            <div class="explore-tabblock">
                <a class="explore-tabblock-link" href="">
                    <div class="explore-tabblock-tag">핸드&바디 기프트</div>
                    <div class="explore-tabblock-img">
                        <img alt="block5" src="${path2}/resources/images/product/handbody/handgift.png">
                        <div class="overlay"></div>
                    </div>
                </a>
            </div>
        </div>
    </div>
	<div class="carousel-section">
        <div class="maintext1">
            <p class="text-play" style="margin-left: 50px">Loved items</p>
        </div>
        <div class="owl-carousel owl-theme">
            <a href="<a href="">"><div class="item" id="product1">
                <div class="pcontainer"><img src="${path2}/resources/images/main/image_product1.png" alt="제품1"></div>
                <div class="pname">레저렉션 아로마틱 핸드 밤</div>
                <div class="pdes">시트러스, 우디, 허브 향</div>
            </div></a>
            <a href=""><div class="item" id="product2">
                <div class="pcontainer"><img src="${path2}/resources/images/main/image_product2.png" alt="제품2"></div>
                <div class="pname">레버런스 아로마틱 핸드 밤</div>
                <div class="pdes">우디, 흙내음, 스모키 향</div>
            </div></a>
            <a href=""><div class="item" id="product3">
                <div class="pcontainer"><img src="${path2}/resources/images/main/image_product3.png" alt="제품3"></div>
                <div class="pname">엘레오스 아로마틱 핸드 밤</div>
                <div class="pdes">허브, 우디, 스파이시</div>
            </div></a>
            <a href=""><div class="item" id="product4">
                <div class="pcontainer"><img src="${path2}/resources/images/main/image_product4.png" alt="제품4"></div>
                <div class="pname">레저렉션 아로마틱 핸드 워시</div>
                <div class="pdes">부드러운 손 세정을 선사하는 투명하고 거품이 적은 클렌징 젤</div>
            </div></a>
            <a href=""><div class="item" id="product5">
                <div class="pcontainer"><img src="${path2}/resources/images/main/image_product5.png" alt="제품5"></div>
                <div class="pname">브레스리스</div>
                <div class="pdes">집중적인 수분 공급으로 건조한 피부를 부드럽게 가꿔주는 오일</div>
            </div></a>
            <a href=""><div class="item" id="product6">
                <div class="pcontainer"><img src="${path2}/resources/images/main/image_product6.png" alt="제품6"></div>
                <div class="pname">레쥬비네이트 인텐시브 바디 밤</div>
                <div class="pdes">시트러스, 바닐라, 우디 향</div>
            </div></a>
        </div>
	</div>
	         
