<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>목록</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${path2 }/resources/js/owl.carousel.min.js"></script>
	<jsp:include page="../include/head.jsp"></jsp:include>
	<link rel="stylesheet" href="../resources/css/fragrance.css" />
	<style>
	.contents { 
		margin-top: 100px;
	}
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
	    min-width: 1900px;
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
	
	.carousel-section { 
		margin-top: 100px;
		height: 580px;
	}
	.owl-carousel.owl-loaded { margin-top: 50px;}
	.owl-carousel .owl-stage-outer {overflow: visible;}
	.owl-stage-outer {margin-bottom: 60px;}
	
	.item {
	    text-align: center;
	    height: 380px; /* 적절한 높이 설정 */
	}
	
	.pcontainer { 
		height: 300px;
		transition: 0.5s;
	}
	
	.pcontainer img {
	    width: 100%;
	    height: 100%;
	    object-fit: contain;
	    object-position: center;
	}
	
	/* Custom Arrow Buttons */
	.owl-prev, .owl-next {
	    position: absolute;
	    top: 50%;
	    transform: translateY(-50%);
	    width: 50px;
	    height: 50px;
	    background-color: transparent;
	    color: white;
	    border: none;
	    cursor: pointer;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    opacity: 0;
	    transition: opacity 0.3s, background-color 0.3s;
	}
	
	.owl-prev {
	    left: 0;
	}
	
	.owl-next {
	    right: 0;
	}
	
	.owl-carousel:hover .owl-prev,
	.owl-carousel:hover .owl-next {
	    opacity: 1;
	}
	
	.owl-prev:hover, .owl-next:hover {
	    background-color: black;
	}
	
	.owl-prev::after, .owl-next::after {
	    font-family: 'FontAwesome';
	    content: '\f104'; /* FontAwesome left arrow icon */
	    font-size: 24px;
	}
	
	.owl-next::after {
	    content: '\f105'; /* FontAwesome right arrow icon */
	}
	
	.pname{
		font-weight: 600;
		line-height: 3em;
	}
	
	.item:hover .pcontainer { transform : scale(1.1)}
	.item:hover .pname {
		font-weight: 800;
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
		<jsp:include page="../chat/chatIcon.jsp"></jsp:include>
	 	    <section class="page" id="page1">
	 	    
	 	    	<c:if test="${category eq 's' }">
	            	<jsp:include page="includejsp/sInclude.jsp"></jsp:include>
	            </c:if>
	    		<c:if test="${category eq 'b' }">
	                <jsp:include page="includejsp/bInclude.jsp"></jsp:include>       
	            </c:if>
                        
                <c:if test="${category eq 'h1' }">
                	<jsp:include page="includejsp/h1Include.jsp"></jsp:include>
                </c:if>
                        
                <c:if test="${category eq 'h2' }">
	                <jsp:include page="includejsp/h2Include.jsp"></jsp:include>
                </c:if>
                        
                <c:if test="${category eq 'p' }">
                	<jsp:include page="includejsp/pInclude.jsp"></jsp:include>
                </c:if>
                        
                <c:if test="${category eq 'k' }">
                     <jsp:include page="includejsp/kInclude.jsp"></jsp:include>   
                </c:if>
				

    		</section>
    		<section class="page" id="page2">
    			<div><p class="text-play" style="margin-left: 50px">For additional assistance</p></div>
    			<div>
    				<p>제품 선택에 보다 자세한 조언이 필요하시면 문의하기를 통해 도움을 받으세요.</p>
    				<div class="round-button">문의하기 </div>
    			</div>	    			
    		</section>
		</main>
 		<footer class="footer" id="ft">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
	</div>
	
    <script>
	       var $j = jQuery.noConflict();
	
	       $j(document).ready(function(){
	           // Owl Carousel 초기화
	           $j(".owl-carousel").owlCarousel({
	               loop: true,
	               nav: true,
	               navText: ['', ''],
	               responsive: {
	                   0: {
	                       items: 1
	                   },
	                   600: {
	                       items: 2
	                   },
	                   1000: {
	                       items: 4
	                   }
	               }
	           });
	       });
   		</script>	
</body>
</html>