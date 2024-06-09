<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />

	<div class="topmain">
		<div class="topmain-text">
			<div class="text25">키트 & 트래블</div>
			<div class="text14">
				<p>함께 사용하면 좋은 제품의 컬렉션과 휴대용 필수품은 여행 또는 선물용으로 이상적입니다.</p>
			</div>
		</div>
		<img alt="키트" src="${path2 }/resources/images/product/kit/kit.png">
		
	</div>
	<div class="cate-navwrap">
		<nav class="cate-nav">
			<ul class="catelist">
				<li><a href="${path2 }/product/listAll.do?category=k" class="navbar-item" title="전체" style="border-bottom: 1px solid #252525;">
                    모든
                    <c:if test="${not empty categoryName}">
				     	${categoryName}
				    </c:if>
                </a></li>
                <li><a href="${path2 }/product/list.do?category=k&category_sub=1" class="navbar-item" title="시즈널 기프트 키트">
                    시즈널 기프트 키트
                </a></li>
                <li><a href="${path2 }/product/list.do?category=k&category_sub=2" class="navbar-item" title="스킨케어키트">
                    스킨 케어 키트
                </a></li>
                <li><a href="${path2 }/product/list.do?category=k&category_sub=3" class="navbar-item" title="바디&핸드 케어 키트">
                    바디&핸드 케어 키트
                </a></li>
                <li><a href="${path2 }/product/list.do?category=k&category_sub=4" class="navbar-item" title="트래블">
                    트래블
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
                    <div class="explore-tabblock-tag">시즈널 기프트 키트</div>
                    <div class="explore-tabblock-img">
                        <img alt="block1" src="${path2}/resources/images/product/kit/image_k1.png">
                        <div class="overlay"></div>
                    </div>
                </a>
            </div>
            <div class="explore-tabblock">
                <a class="explore-tabblock-link" href="">
                    <div class="explore-tabblock-tag">스킨 케어 키트</div>
                    <div class="explore-tabblock-img">
                        <img alt="block2" src="${path2}/resources/images/product/kit/image_k2.png">
                        <div class="overlay"></div>
                    </div>
                </a>
            </div>
            <div class="explore-tabblock">
                <a class="explore-tabblock-link" href="">
                    <div class="explore-tabblock-tag">바디&핸드 케어 키트</div>
                    <div class="explore-tabblock-img">
                        <img alt="block3" src="${path2}/resources/images/product/kit/image_k3.png">
                        <div class="overlay"></div>
                    </div>
                </a>
            </div>
            <div class="explore-tabblock">
                <a class="explore-tabblock-link" href="">
                    <div class="explore-tabblock-tag">트래블</div>
                    <div class="explore-tabblock-img">
                        <img alt="block4" src="${path2}/resources/images/product/kit/image_k4.png">
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
            <a href=""><div class="item" id="product1">
                <div class="pcontainer"><img src="${path2}/resources/images/product/kit/1.png" alt="제품1"></div>
                <div class="pname">페뷸러스 폼</div>
                <div class="pdes">핸드, 바디, 립 케어를 위한 믿을 수 있는 제품 3종</div>
            </div></a>
            <a href=""><div class="item" id="product2">
                <div class="pcontainer"><img src="${path2}/resources/images/product/kit/2.png" alt="제품2"></div>
                <div class="pname">튠풀 텍스처</div>
                <div class="pdes">피부를 상쾌하게 세정하고 수분을 공급하는 오랜 사랑을 받는 제품 3종</div>
            </div></a>
            <a href=""><div class="item" id="product3">
                <div class="pcontainer"><img src="${path2}/resources/images/product/kit/3.png" alt="제품3"></div>
                <div class="pname">하트풀 하모니</div>
                <div class="pdes">홈 케어를 위한 필수품 3종</div>
            </div></a>
            <a href=""><div class="item" id="product4">
                <div class="pcontainer"><img src="${path2}/resources/images/product/kit/4.png" alt="제품4"></div>
                <div class="pname">레저렉션 듀엣</div>
                <div class="pdes">핸드 클렌징과 수분 공급을 위한 시트러스, 우디, 허브 향이 돋보이는 제품 2종</div>
            </div></a>
            <a href=""><div class="item" id="product5">
                <div class="pcontainer"><img src="${path2}/resources/images/product/kit/5.png" alt="제품5"></div>
                <div class="pname">어라이벌</div>
                <div class="pdes">열성적인 탐험가를 위한 편리한 4종 제품</div>
            </div></a>
            <a href=""><div class="item" id="product6">
                <div class="pcontainer"><img src="${path2}/resources/images/product/kit/6.png" alt="제품6"></div>
                <div class="pname">라우징 리듬</div>
                <div class="pdes">활기를 전하는 제라늄 리프 바디 케어 3종</div>
            </div></a>
        </div>
        
        
</div>
	         
