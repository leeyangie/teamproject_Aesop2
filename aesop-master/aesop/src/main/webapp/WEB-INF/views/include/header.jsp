<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path0" value="${pageContext.servletContext.contextPath }" />

<div class="header_wrapper">
	<div id="header_wrap">
	    <div id="logo_wrap">
	        <a href="${path0}"><div id="logo_imgwrap"><img src="${path0}/resources/images/main/image_logo.png" alt="로고"></div></a>
	    </div>
	    <nav id="gnb">
            <ul id="mainmenu">
                <c:set var="currentCategory" value="${param.category}" />
                <a href="${path0 }/product/listAll.do?category=s">
                    <li class="menu <c:if test='${currentCategory == "s"}'>active</c:if>">스킨케어</li>
                </a>
                <a href="${path0 }/product/listAll.do?category=b">
                    <li class="menu <c:if test='${currentCategory == "b"}'>active</c:if>">바디&핸드</li>
                </a>
                <a href="${path0 }/product/listAll.do?category=h1">
                    <li class="menu <c:if test='${currentCategory == "h1"}'>active</c:if>">홈</li>
                </a>
                <a href="${path0 }/product/listAll.do?category=h2">
                    <li class="menu <c:if test='${currentCategory == "h2"}'>active</c:if>">헤어</li>
                </a>
                <a href="${path0 }/product/listAll.do?category=p">
                    <li class="menu <c:if test='${currentCategory == "p"}'>active</c:if>">향수</li>
                </a>
                <a href="${path0 }/product/listAll.do?category=k">
                    <li class="menu <c:if test='${currentCategory == "k"}'>active</c:if>">키트&트레블</li>
                </a>
                <a href="">
                    <li class="menu">읽기</li>
                </a>
                <a href="">
                    <li class="menu">스토어</li>
                </a>
                <a href="">
                    <li class="menu">게시판</li>
                </a>
                <a href="${path0 }/product/test.do">
                    <li class="menu">검색</li>
                </a>
            </ul>
        </nav>
	    <nav id="tnb">
	        <ul id="topmenu">
	        <c:if test="${semail.equals('admin@aesop.com')}">
        		<a href="${path0}/admin/testadmin.do"><li class="topitem">관리자 페이지</li></a>
    		</c:if>
	        <c:if test="${!empty semail}">
	            <a href="${path0}/member/logout.do"><li class="topitem">로그아웃</li></a>
	            <a href="${path0}/member/wishList.do"><li class="topitem">위시리스트</li></a>
	            <a href="${path0}/member/cart.do"><li class="topitem">카트</li></a>
	        </c:if>
	        <c:if test="${empty semail}">
	            <a href="${path0}/member/login.do"><li class="topitem">로그인</li></a>
	            <a href="${path0}/member/login.do"><li class="topitem">위시리스트</li></a>
	            <a href="${path0}/member/login.do"><li class="topitem">카트</li></a>
	        </c:if>
	        </ul>
	    </nav>
	</div>
</div>

<script>
// Hide Header on on scroll down
var didScroll;
var lastScrollTop = 0;
var delta = 5; // 동작의 구현이 시작되는 위치
var navbarHeight = document.querySelector('.header_wrapper').offsetHeight;

// 스크롤시에 사용자가 스크롤했다는 것을 알림
window.addEventListener('scroll', function(event){
    didScroll = true;
});

// hasScrolled()를 실행하고 didScroll 상태를 재설정
setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

// 동작을 구현
function hasScrolled() {
    // 접근하기 쉽게 현재 스크롤의 위치를 저장한다.
    var st = window.scrollY;
    
    // 설정한 delta 값보다 더 스크롤되었는지를 확인한다.
    if(Math.abs(lastScrollTop - st) <= delta){
        return;
    }
    
    // 헤더의 높이보다 더 스크롤되었는지 확인하고 스크롤의 방향이 위인지 아래인지를 확인한다.
    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        document.querySelector('.header_wrapper').classList.remove('nav-down');
        document.querySelector('.header_wrapper').classList.add('nav-up');
    } else {
        // Scroll Up
        if(st + window.innerHeight < document.documentElement.scrollHeight) {
            document.querySelector('.header_wrapper').classList.remove('nav-up');
            document.querySelector('.header_wrapper').classList.add('nav-down');
        }
    }
    /* // 스크롤이 맨 위로 올라가면 헤더를 투명하게 만듭니다.
    if (st < 5) {
        document.querySelector('.header_wrapper').classList.add('transparent');
    } else {
        document.querySelector('.header_wrapper').classList.remove('transparent');
    } */
    
    // lastScrollTop 에 현재 스크롤위치를 지정한다.
    lastScrollTop = st;
}
</script>