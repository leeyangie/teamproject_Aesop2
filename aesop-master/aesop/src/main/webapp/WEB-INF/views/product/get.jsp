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
	<jsp:include page="../include/head.jsp"></jsp:include>
	<style>
       .contents { margin-top: 100px;}
       .breadcrumb { 
       		height: 50px;
       		line-height: 4em;
       		margin-left: 50px;
       		margin-top: 50px;
       		font-size: 18px;
       		font-weight: 300;
       }
        #psection1 { 
            height: 600px;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 30px;
        }
        .product_img {
            height: 500px;
            overflow: hidden;
            position: absolute;
        }
        .product_img img { 
            height: 100%;
        }
        .product_text { 
            font-family: 'Optima', sans-serif;
	        font-size: 140px;
            text-align: center;
        }

        #psection2 { 
            height: 260px;
            text-align: center;
        }

        .pname { 
            font-size: 22px;
            font-weight: 500;
        }

        .description { line-height: 4em;}

        .ml { 
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .price {
            font-weight: 500;
            font-size: 18px;
        }

        #psection3 {
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .square-button {
            width: 240px;
            height: 44px;
            background-color: #252525;
            color: #FFFEF2;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .square-button:hover { background-color:#000;}

        #square-button1 { margin-right: 10px;}
        
        .square-button-fa {
            width: 240px;
            height: 44px;
            background-color: transparent;
            color: #252525;
            border: 1px solid #252525;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .square-button-fa:hover { background-color: #EBEADE;}
        
        .square-button-fa2 {
            width: 180px;
            height: 44px;
            background-color: #F6F5E8;
            color: #252525;
            border: 1px solid #252525;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-left:10px;
        }
        
		.square-button-fa2:hover { 
			background-color: #252525;
			color: #fff;
		}
        
        #psection4 {
            height: 300px;
            display: grid;
            grid-template-columns: 33% 33% 33%;
        }

        .promo { 
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            line-height: 2em;
            margin-bottom: 20px;
        }

        .promo_bold { 
            font-weight: 600;
        }

        #psection5 {
            height: 500px;
        }
        .cate_imgwrap {
            width: 1200px;
            height: 520px;
            overflow: hidden;
            margin: 0 auto;
        }
        .cate_imgwrap > img { 
            width: 100%;
            top: -200px;
        }

        #psection6 {
            height: 400px;
            width: 1200px;
            margin: 0 auto;
        }

        .pinfo {
            font-size: 22px;
            line-height: 4em;
            margin-top: 30px;
        }
        .pinfo-table { 
            width: 1200px;
            line-height: 2em;
            font-size: 14px;
        }

        .pinfo-table tr th {text-align: left;}
        .pinfo-table tr td {padding-left: 40px;}

        #psection7{

            background-color: #EBEADE;
            display: flex;
            flex-direction: column;
            height: 900px;
            align-items: center;
        }

        .review {
            font-size: 22px;
            line-height: 4em;
            margin-top: 30px;
        }

        .review_img { 
            width: 100px;
            height: 100px;
            overflow: hidden;
        }

        .review_img img { width: 100%;}

        .review-table tr td { 
            border-bottom: 1px solid rgb(187, 185, 183); 
            padding: 10px;
        }
        .review-table {
            border-collapse: collapse;     
            border-spacing: 0;
        }
        .review-table thead { 
            border-bottom: 1.5px solid #252525;
            line-height: 3em;
        }

        .review_item1, .review_item2, .review_item3 { width: 120px;}
        .review_item5 { 
            width: 600px;
            min-width: 200px;
        }

        @media (max-width: 640px) {
            .promo { 
                font-size: 11px;
                line-height: 1.5em;
            }
        }

    </style>
</head>
<body>
    <div class="content">
        <header>
			<jsp:include page="../include/header.jsp"></jsp:include>
        </header>
        <main class="contents">
        	<jsp:include page="../chat/chatIcon.jsp"></jsp:include>
            <div class="breadcrumb">
		    <c:choose>
		    <c:when test="${product.category eq 's'}">
		        <a href="${path2}/product/listAll.do?category=s">스킨케어</a>
		        <c:choose>
		            <c:when test="${product.category_sub eq '1'}"><a href="${path2}/product/list.do?category=s&category_sub=1">클렌저</a></c:when>
		            <c:when test="${product.category_sub eq '2'}"><a href="${path2}/product/list.do?category=s&category_sub=2">트리트먼트 & 마스크</a></c:when>
		            <c:when test="${product.category_sub eq '3'}"><a href="${path2}/product/list.do?category=s&category_sub=3">토너</a></c:when>
		            <c:when test="${product.category_sub eq '4'}"><a href="${path2}/product/list.do?category=s&category_sub=4">하이드레이터</a></c:when>
		            <c:when test="${product.category_sub eq '5'}"><a href="${path2}/product/list.do?category=s&category_sub=5">스킨케어 기프트</a></c:when>
		        </c:choose>
		    </c:when>
		
		    <c:when test="${product.category eq 'b'}">
		        <a href="${path2}/product/listAll.do?category=b">바디</a>
		        <c:choose>
		            <c:when test="${product.category_sub eq '1'}"><a href="${path2}/product/list.do?category=b&category_sub=1">핸드</a></c:when>
		            <c:when test="${product.category_sub eq '2'}"><a href="${path2}/product/list.do?category=b&category_sub=2">바디</a></c:when>
		            <c:when test="${product.category_sub eq '3'}"><a href="${path2}/product/list.do?category=b&category_sub=3">퍼스널 케어</a></c:when>
		            <c:when test="${product.category_sub eq '4'}"><a href="${path2}/product/list.do?category=b&category_sub=4">번들</a></c:when>
		            <c:when test="${product.category_sub eq '5'}"><a href="${path2}/product/list.do?category=b&category_sub=5">핸드 및 바디 케어 기프트</a></c:when>
		        </c:choose>
		    </c:when>
		
		    <c:when test="${product.category eq 'h1'}">
		        <a href="${path2}/product/listAll.do?category=h1">홈</a>
		        <c:choose>
		            <c:when test="${product.category_sub eq '1'}"><a href="${path2}/product/list.do?category=h1&category_sub=1">홈</a></c:when>
		            <c:when test="${product.category_sub eq '3'}"><a href="${path2}/product/list.do?category=h1&category_sub=3">홈 케어 기프트</a></c:when>
		        </c:choose>
		    </c:when>
		
		    <c:when test="${product.category eq 'h2'}">
		        <a href="${path2}/product/listAll.do?category=h2">헤어</a>
		        <c:choose>
		            <c:when test="${product.category_sub eq '1'}"><a href="${path2}/product/list.do?category=h2&category_sub=1">샴푸</a></c:when>
		            <c:when test="${product.category_sub eq '2'}"><a href="${path2}/product/list.do?category=h2&category_sub=2">컨디셔너</a></c:when>
		            <c:when test="${product.category_sub eq '3'}"><a href="${path2}/product/list.do?category=h2&category_sub=3">트리트먼트</a></c:when>
		            <c:when test="${product.category_sub eq '4'}"><a href="${path2}/product/list.do?category=h2&category_sub=4">그루밍</a></c:when>
		        </c:choose>
		    </c:when>
		
		    <c:when test="${product.category eq 'p'}">
		        <a href="${path2}/product/listAll.do?category=p">향수</a>
		        <c:choose>
		            <c:when test="${product.category_sub eq '1'}"><a href="${path2}/product/list.do?category=p&category_sub=1">플로럴</a></c:when>
		            <c:when test="${product.category_sub eq '2'}"><a href="${path2}/product/list.do?category=p&category_sub=2">프레쉬</a></c:when>
		            <c:when test="${product.category_sub eq '3'}"><a href="${path2}/product/list.do?category=p&category_sub=3">우디</a></c:when>
		            <c:when test="${product.category_sub eq '4'}"><a href="${path2}/product/list.do?category=p&category_sub=4">오큘런트</a></c:when>
		        </c:choose>
		    </c:when>
		
		    <c:when test="${product.category eq 'k'}">
		        <a href="${path2}/product/listAll.do?category=k">기프트 키트</a>
		        <c:choose>
		            <c:when test="${product.category_sub eq '1'}"><a href="${path2}/product/list.do?category=k&category_sub=1">시즈널 기프트 키트</a></c:when>
		            <c:when test="${product.category_sub eq '2'}"><a href="${path2}/product/list.do?category=k&category_sub=2">스킨 케어 키트</a></c:when>
		            <c:when test="${product.category_sub eq '3'}"><a href="${path2}/product/list.do?category=k&category_sub=3">바디&핸드 케어 키트</a></c:when>
		            <c:when test="${product.category_sub eq '4'}"><a href="${path2}/product/list.do?category=k&category_sub=4">트래블</a></c:when>
		        </c:choose>
		    </c:when>
		</c:choose>
		</div>
            <section class="psection" id="psection1">
                <div class="product_img"><img src="${path2}/resources/upload/${product.img2 }" alt="${product.pname } 상품 설명 이미지"></div>
                <c:if test="${product.category eq 's'}">
                	<c:if test="${product.category_sub eq '1'}">
                		<div class="product_text">CLEANSER</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '2'}">
                		<div class="product_text">TREAT & MASQUE</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '3'}">
                		<div class="product_text">TONE</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '4'}">
                		<div class="product_text">HYDRATE</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '5'}">
                		<div class="product_text">SKIN CARE GIFTS</div>
                	</c:if>
                </c:if>
                <c:if test="${product.category eq 'b'}">
                	<c:if test="${product.category_sub eq '1'}">
                		<div class="product_text">HAND</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '2'}">
                		<div class="product_text">BODY</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '3'}">
                		<div class="product_text">PERSONAL CARE</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '4'}">
                		<div class="product_text">BUNDLE</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '5'}">
                		<div class="product_text">BODY & HAND GIFTS</div>
                	</c:if>
                </c:if>
                <c:if test="${product.category eq 'h1'}">
                	<c:if test="${product.category_sub eq '1'}">
                		<div class="product_text">HOME</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '2'}">
                		<div class="product_text">HOME GIFTS</div>
                	</c:if>
                </c:if>
                <c:if test="${product.category eq 'h2'}">
                	<c:if test="${product.category_sub eq '1'}">
                		<div class="product_text">SHAMPOO</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '2'}">
                		<div class="product_text">CONDITION</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '3'}">
                		<div class="product_text">TREAT</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '4'}">
                		<div class="product_text">GROOM</div>
                	</c:if>
                </c:if>
                <c:if test="${product.category eq 'p'}">
                	<div class="product_text">FRAGRANCE</div>
                </c:if>
                <c:if test="${product.category eq 'k'}">
                	<c:if test="${product.category_sub eq '1'}">
                		<div class="product_text">GIFT KITS</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '2'}">
                		<div class="product_text">SKIN CARE KITS</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '3'}">
                		<div class="product_text">BODY & HAND CARE KITS</div>
                	</c:if>
                	<c:if test="${product.category_sub eq '4'}">
                		<div class="product_text">TRAVEL</div>
                	</c:if>
                </c:if>
            </section>
            <section class="psection" id="psection2">
                <div class="pname"><p>${product.pname }</p></div>
                <div class="description"><p>${product.com }</p></div>
                <c:set var="price" value="${product.price}" />
				<fmt:formatNumber type="number" value="${price}" pattern="#,##0" var="formattedPrice" />
				<div class="price"><p><c:out value="${formattedPrice}" /></p></div>
            </section>
			
            <section class="psection" id="psection3">
	            <c:if test="${semail != null }">
			  	  	<a href="${path2 }/sales/inSales.do?pno=${product.pno }"><div class="square-button" id="square-button1">구매하기</div></a>
	                <a href="${path2 }/product/listAll.do?category=${product.category}"><div class="square-button-fa" id="square-button2">상품목록</div></a>		
					<!--관리자버튼 -->
					  <c:if test="${semail.equals('admin@aesop.com') }">
					  <a href="${path2 }/product/insert.do" class="square-button-fa2" >상품 등록</a>
					  <a href="${path2 }/product/update.do?pno=${product.pno }" class="square-button-fa2" >상품 수정</a>
					  <a href="${path2 }/product/delProduct.do?pno=${product.pno }" class="square-button-fa2">상품 삭제</a>
					  </c:if>
				</c:if>
	            <c:if test="${semail == null }"> 
	                <a href="${path2}/member/login.do" class="square-button" style="margin-right: 10px;">구매하기</a>
	                <a href="${path2 }/product/listAll.do?category=${product.category}" class="square-button-fa">상품목록</a>
	            </c:if>
            </section>
			<c:if test="${product.category eq 's'}">
            	<jsp:include page="includejsp/getinfoInclude_s.jsp"></jsp:include>
            </c:if>
			<c:if test="${product.category eq 'b'}">
            	<jsp:include page="includejsp/getinfoInclude_b.jsp"></jsp:include>
            </c:if>
			<c:if test="${product.category eq 'h1'}">
            	<jsp:include page="includejsp/getinfoInclude_h.jsp"></jsp:include>
            </c:if>
            <c:if test="${product.category eq 'h2'}">
            	<jsp:include page="includejsp/getinfoInclude_h2.jsp"></jsp:include>
            </c:if>
            <c:if test="${product.category eq 'p'}">
            	<jsp:include page="includejsp/getinfoInclude_p.jsp"></jsp:include>
            </c:if>
            <c:if test="${product.category eq 'k'}">
            	<jsp:include page="includejsp/getinfoInclude_k.jsp"></jsp:include>
            </c:if>
            <section class="psection" id="psection7">
                <div class="review">상품 리뷰</div>
                <div>
                    <table class="review-table">
                        <thead>
                            <tr>
                                <th class="review_item2">image</th>
                                <th class="review_item3">rate</th>
                                <th class="review_item4">subject</th>
                                <th class="review_item5">contents</th>
                                <th class="review_item6">writer</th>
                                <th class="review_item7">date</th>
                                <th class="review_item8">view</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><div class="review_img"><img src="images/review/images.jpg" alt="리뷰이미지1"></div></td>
                                <td>★★★★★</td>
                                <td>제품이 너무 좋아요!</td>
                                <td>제품 써보니까 진짜 다르네요. 향이 하루종일 가요.</td>
                                <td>김**</td>
                                <td>2024-06-02</td>
                                <td>2</td>
                            </tr>
                            <tr>
                                <td><div class="review_img"><img src="images/review/images (1).jpg" alt="리뷰이미지2"></div></td>
                                <td>★★★★★</td>
                                <td>제품이 너무 좋아요!</td>
                                <td>핸드워시부터
                                    집들이 선물로 정말정말*100 인기 많은 핸드워시.
                                    그만큼 예쁘고 향도 좋다. 왼쪽의 레버런스 아로마틱 핸드워시는 작은 알갱이가 들어있고, 좀 더 우디향이 강하다.
                                    오른쪽 리저렉션 아로마틱 핸드워시는 이솝에서 제일 인기 많은 핸드크림과 세트다. 호불호 갈리지 않는 은은한 향!
                                    선물을 한다면 당연히 오른쪽 걸로 추천! 나는 둘 다 좋다 ☺️</td>
                                <td>김**</td>
                                <td>2024-06-02</td>
                                <td>2</td>
                            </tr>
                            <tr>
                                <td><div class="review_img"><img src="images/review/images (2).jpg" alt="리뷰이미지3"></div></td>
                                <td>★★★★★</td>
                                <td>제품이 너무 좋아요!</td>
                                <td>핸드워시부터
                                    집들이 선물로 정말정말*100 인기 많은 핸드워시.
                                    그만큼 예쁘고 향도 좋다. 왼쪽의 레버런스 아로마틱 핸드워시는 작은 알갱이가 들어있고, 좀 더 우디향이 강하다.
                                    오른쪽 리저렉션 아로마틱 핸드워시는 이솝에서 제일 인기 많은 핸드크림과 세트다. 호불호 갈리지 않는 은은한 향!
                                    선물을 한다면 당연히 오른쪽 걸로 추천! 나는 둘 다 좋다 ☺️</td>
                                <td>김**</td>
                                <td>2024-06-02</td>
                                <td>2</td>
                            </tr>
                            <tr>
                                <td><div class="review_img"><img src="images/review/images (1).jpg" alt="리뷰이미지2"></div></td>
                                <td>★★★★★</td>
                                <td>제품이 너무 좋아요!</td>
                                <td>핸드워시부터
                                    집들이 선물로 정말정말*100 인기 많은 핸드워시.
                                    그만큼 예쁘고 향도 좋다. 왼쪽의 레버런스 아로마틱 핸드워시는 작은 알갱이가 들어있고, 좀 더 우디향이 강하다.
                                    오른쪽 리저렉션 아로마틱 핸드워시는 이솝에서 제일 인기 많은 핸드크림과 세트다. 호불호 갈리지 않는 은은한 향!
                                    선물을 한다면 당연히 오른쪽 걸로 추천! 나는 둘 다 좋다 ☺️</td>
                                <td>김**</td>
                                <td>2024-06-02</td>
                                <td>2</td>
                            </tr>
                            <tr>
                                <td><div class="review_img"><img src="images/review/images (2).jpg" alt="리뷰이미지3"></div></td>
                                <td>★★★★★</td>
                                <td>제품이 너무 좋아요!</td>
                                <td>핸드워시부터
                                    집들이 선물로 정말정말*100 인기 많은 핸드워시.
                                    그만큼 예쁘고 향도 좋다. 왼쪽의 레버런스 아로마틱 핸드워시는 작은 알갱이가 들어있고, 좀 더 우디향이 강하다.
                                    오른쪽 리저렉션 아로마틱 핸드워시는 이솝에서 제일 인기 많은 핸드크림과 세트다. 호불호 갈리지 않는 은은한 향!
                                    선물을 한다면 당연히 오른쪽 걸로 추천! 나는 둘 다 좋다 ☺️</td>
                                <td>김**</td>
                                <td>2024-06-02</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>
        </main>
        <footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
        </footer>
    </div>>												
</body>
</html>