<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />
<%boolean isLoggedIn = session.getAttribute("semail") != null;%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>목록</title>
	<jsp:include page="../include/head.jsp"></jsp:include>
	<style>
		.contents { 
			margin-top: 100px;
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
		
		.navbar-item.active {
			border-bottom: 1px solid #252525;
		}
		
		#page2 { height: 900px; }
		#list1 { 
			display: grid; 
			grid-template-columns: repeat(4 , 25%);
			
		}
		
		@media (max-width: 1200px) {
		            #list1 {
		            grid-template-columns: repeat(3 , 33%);
		            }
		        }
		
		@media (max-width: 960px) {
		            #list1 {
		            grid-template-columns: repeat(2 , 50%);
		            }
		        }
		        @media (max-width: 640px) {
		            #list1 {
		            grid-template-columns: repeat(1 , 100%);
		            }
		        }
		
		
		.column {
			background-color: #F6F5E8;
			display: flex;
			flex-direction: column;
			margin: 3px;
			position: relative;
		}
		
		.column2 {
			background-color: transparent;
			display: flex;
			flex-direction: column;
			margin: 3px;
			justify-content: center;
			padding: 40px;
		}
		
		.column:hover {background-color: transparent; }
		
		.column_inner { 
		    width: 100%;
		    height: 500px;
		    overflow: hidden;
		    margin: 0 auto;
			
		}
		
		.item_wrap { 
		    width: 100%;
		    margin-top: 20px;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		    flex-direction: column;
		}
		
		.item_box {
		    display: flex;
		    flex-direction: column;
		    align-items: center;
		}
		
		.imgwrap {
			width: 200px;
		    height: 260px;
		    display: flex;
    		align-items: center;
    		margin-bottom: 30px;
		}
		
		.imgwrap img { width: 100%;}
		
		
		.column > i { 
		    align-self: flex-end;
		    margin-top: 20px;
		    margin-right: 20px;
		}
		
		.list_descpt {
			width: 70%;
		    display: -webkit-box;
		    -webkit-line-clamp: 2; /* 최대 표시할 줄 수 */
		    -webkit-box-orient: vertical;
		    overflow: hidden;
		    text-overflow: ellipsis; /* 줄임말 표시 */
		}
		
		.text-wrap { 
			text-align: center;
			line-height: 1.5em;
			display: flex;
			align-items: center;
			flex-direction: column;
		}
		
		.list_cate { 
			font-size: 13px; 
			line-height: 3em;
		}
		
		.list_descpt { 
			margin-bottom: 10px;
			margin-top: 5px;  
			font-size: 13px; 
		}
		
		.round-button2 { 
		    width: 110px;
		    height: 30px;
		    border-radius: 50px;
		    line-height: 2em;
		    border: 1px solid #252525;
		    text-align: center;
		}
		
		.square-button {
			visibility: hidden;
			width: 100%;
            height: 40px;
            background-color: #252525;
            color: #FFFEF2;
            border: 1px solid #252525;
            display: flex;
            justify-content: center;
            align-items: center;
            position: absolute;
            bottom: 0;
        }
        
        .column:hover .square-button{
        	visibility: visible;
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
			<div class="cate-navwrap">
				<nav class="cate-nav">
					<ul class="catelist">
						<c:if test="${category eq 's' }">
	                        <li><a href="${path2 }/product/listAll.do?category=s" class="navbar-item" title="전체">
	                            모든
	                            <c:if test="${not empty categoryName}">
					                ${categoryName}
					            </c:if>
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=s&category_sub=1" class="navbar-item ${category_sub eq '1' ? 'active' : ''}" title="클렌저">
	                            클렌저
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=s&category_sub=2" class="navbar-item ${category_sub eq '2' ? 'active' : ''}" title="트리트먼트&마스크">
	                            트리트먼트 & 마스크
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=s&category_sub=3" class="navbar-item ${category_sub eq '3' ? 'active' : ''}" title="토너">
	                            토너
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=s&category_sub=4" class="navbar-item ${category_sub eq '4' ? 'active' : ''}" title="하이드레이터">
	                            하이드레이터
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=s&category_sub=5" class="navbar-item ${category_sub eq '5' ? 'active' : ''}" title="각질 제거">
	                            스킨케어 기프트
	                        </a></li>
	                        <c:if test="${semail.equals('admin@aesop.com') }">
				                <div class="round-button2"><li><a href="${path2 }/product/insert.do" class="button is-danger">상품 등록</a></li></div>
			                </c:if>
			                </c:if>
	                        
	                       <c:if test="${category eq 'b' }">
	                        <li><a href="${path2 }/product/listAll.do?category=b" class="navbar-item" title="전체">
	                            모든
	                            <c:if test="${not empty categoryName}">
					                ${categoryName}
					            </c:if>
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=b&category_sub=1" class="navbar-item ${category_sub eq '1' ? 'active' : ''}" title="핸드">
	                            핸드
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=b&category_sub=2" class="navbar-item ${category_sub eq '2' ? 'active' : ''}" title="바디">
	                            바디
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=b&category_sub=3" class="navbar-item ${category_sub eq '3' ? 'active' : ''}" title="퍼스널 케어">
	                            퍼스널 케어
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=b&category_sub=4" class="navbar-item ${category_sub eq '4' ? 'active' : ''}" title="번들">
	                            번들
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=b&category_sub=5" class="navbar-item ${category_sub eq '5' ? 'active' : ''}" title="핸드 및 바디 케어 기프트">
	                            핸드 및 바디 케어 기프트
	                        </a></li>
	                        <c:if test="${semail.equals('admin@aesop.com') }">
				                <div class="round-button2"><li><a href="${path2 }/product/insert.do" class="button is-danger">상품 등록</a></li></div>
			                </c:if>
	                        </c:if>
	                        
	                        <c:if test="${category eq 'h1' }">
	                        <li><a href="${path2 }/product/listAll.do?category=h1" class="navbar-item" title="전체">
	                            모든
	                            <c:if test="${not empty categoryName}">
					                ${categoryName}
					            </c:if>
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=h1&category_sub=1" class="navbar-item ${category_sub eq '1' ? 'active' : ''}" title="홈">
	                            홈
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=h1&category_sub=3" class="navbar-item ${category_sub eq '3' ? 'active' : ''}" title="홈 케어 기프트">
	                            홈 케어 기프트
	                        </a></li>
	                        <c:if test="${semail.equals('admin@aesop.com') }">
				                <div class="round-button2"><li><a href="${path2 }/product/insert.do" class="button is-danger">상품 등록</a></li></div>
			                </c:if>
	                        </c:if>
	                        
	                        <c:if test="${category eq 'h2' }">
	                        <li><a href="${path2 }/product/listAll.do?category=h2" class="navbar-item" title="전체">
	                            모든
	                            <c:if test="${not empty categoryName}">
					                ${categoryName}
					            </c:if>
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=h2&category_sub=1" class="navbar-item ${category_sub eq '1' ? 'active' : ''}" title="샴푸">
	                            샴푸
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=h2&category_sub=2" class="navbar-item ${category_sub eq '2' ? 'active' : ''}" title="컨디셔너">
	                            컨디셔너
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=h2&category_sub=3" class="navbar-item ${category_sub eq '3' ? 'active' : ''}" title="트리트먼트">
	                            트리트먼트
	                        </a></li>
	                        <li><a href="${path2 }/product/list.do?category=h2&category_sub=4" class="navbar-item ${category_sub eq '4' ? 'active' : ''}" title="그루밍">
	                            그루밍
	                        </a></li>
	                        <c:if test="${semail.equals('admin@aesop.com') }">
				                <div class="round-button2"><li><a href="${path2 }/product/insert.do" class="button is-danger">상품 등록</a></li></div>
			                </c:if>
	                        </c:if>
	                        
	                        <c:if test="${category eq 'p' }">
	                        <li><a href="${path2 }/product/listAll.do?category=p" class="navbar-item" title="전체">
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
	                        </c:if>
	                        
	                         <c:if test="${category eq 'k' }">
	                        <li><a href="${path2 }/product/listAll.do?category=k" class="navbar-item" title="전체">
			                    모든
			                    <c:if test="${not empty categoryName}">
							     	${categoryName}
							    </c:if>
			                </a></li>
			                <li><a href="${path2 }/product/list.do?category=k&category_sub=1" class="navbar-item ${category_sub eq '1' ? 'active' : ''}" title="시즈널 기프트 키트">
			                    시즈널 기프트 키트
			                </a></li>
			                <li><a href="${path2 }/product/list.do?category=k&category_sub=2" class="navbar-item ${category_sub eq '2' ? 'active' : ''}" title="스킨케어키트">
			                    스킨 케어 키트
			                </a></li>
			                <li><a href="${path2 }/product/list.do?category=k&category_sub=3" class="navbar-item ${category_sub eq '3' ? 'active' : ''}" title="바디&핸드 케어 키트">
			                    바디&핸드 케어 키트
			                </a></li>
			                <li><a href="${path2 }/product/list.do?category=k&category_sub=4" class="navbar-item ${category_sub eq '4' ? 'active' : ''}" title="트래블">
			                    트래블
			                </a></li>
			                <c:if test="${semail.equals('admin@aesop.com') }">
				                <div class="round-button2"><li><a href="${path2 }/product/insert.do" class="button is-danger">상품 등록</a></li></div>
			                </c:if>
	                        </c:if>
			            </ul>
					</nav>
				</div>
				<div class="page-wrap">
					<ul class="columns list" id="list1">
						<c:if test="${not empty list }">
							<li class="column2">
							<c:if test="${category eq 's' && category_sub eq '1'}">
								<p class="text-play">Begin at the beginning</p>
								<br>
								<p>각질, 불필요한 유분 그리고 기타 잔여물을 말끔히 씻어내어<br>피부를 깨끗하게 하는 것은 인텔리전트 스킨케어의 기초입니다.</p>
							</c:if>
							<c:if test="${category eq 's' && category_sub eq '2'}">
								<p class="text-play">Augmenting the everyday</p>
								<br>
								<p>데일리 스킨 케어 루틴을 보완해 트리트먼트와 마스크를 정기적으로 사용하세요. 잔여물을 씻어내주고 영양과 수분을 보충해 피부를 부드럽고 유연하게 가꾸고 건강하게 지켜줍니다</p>
							</c:if>
							<c:if test="${category eq 's' && category_sub eq '3'}">
								<p class="text-play">Preparation is key</p>
								<br>
								<p>토닝은 깨끗한 피부를 탄생시키는 핵심적인 역할을 합니다. 오랫동안 남아있는 잔여물과 피지를 씻어내고 피부의 밸런스를 잡아주며 수분 공급을 위해 피부를 준비합니다.</p>
							</c:if>
							<c:if test="${category eq 's' && category_sub eq '4'}">
								<p class="text-play">For healthy, supple and resilient skin</p>
								<br>
								<p>피부에 보습, 영양을 주고 진정을 돕는 하이드레이터는 피부를 건강하게 가꿔주고 우수한 상태로 유지 시켜줍니다.</p>
							</c:if>
							<c:if test="${category eq 's' && category_sub eq '5'}">
								<p class="text-play">Selections for skin and senses</p>
								<br>
								<p>Within our family of products, Aesop Skin Care formulations are sought-after for both personal use and as thoughtful gifts.</p>
							</c:if>
							<c:if test="${category eq 'b' && category_sub eq '1'}">
								<p class="text-play">Hydrate, nourish and soften</p>
								<br>
								<p>매일 우리에게 안락함을 선사하는 손은 보살핌을 받을 자격이 충분합니다. 아로마 클렌저와 밤은 손에 수분과 영양을 공급하고 부드럽게 가꿔줍니다.</p>
							</c:if>
							</li>
							<c:forEach var="dto" items="${list}">
							    <li class="column">
							        <i class="fa-regular fa-heart" onclick="toggleHeart(this)"></i>
							        <div class="column_inner">
							            <a href="${path2}/product/detail.do?pno=${dto.pno}" class="item_wrap">
							                <div class="imgwrap"><img src="${path2}/resources/upload/${dto.img3}"></div>
							                <h4 class="list_cate">
							                    <c:choose>
							                        <c:when test="${dto.category eq 's'}">스킨케어</c:when>
							                        <c:when test="${dto.category eq 'b'}">바디</c:when>
							                        <c:when test="${dto.category eq 'h1'}">홈</c:when>
							                        <c:when test="${dto.category eq 'h2'}">헤어</c:when>
							                        <c:when test="${dto.category eq 'p'}">향수</c:when>
							                        <c:when test="${dto.category eq 'k'}">기프트 키트</c:when>
							                        <c:otherwise>기타</c:otherwise>
							                    </c:choose>
							                </h4>
							                <div class="text-wrap">
								                <h3 class="list_title">${dto.pname}</h3>
								                <p class="list_descpt">${dto.com}</p>
								                <p class="list_price">
								                <c:set var="price" value="${dto.price}" />
												<fmt:formatNumber type="number" value="${price}" pattern="#,##0" var="formattedPrice" />
												<div class="price"><p><strong>&#8361;<c:out value="${formattedPrice}" /></strong></p></div>
											</div>
							                <a href="" class="square-button">구매하기</a>
							            </a>
							        </div>
							    </li>
							</c:forEach>
						</c:if>
						<c:if test="${empty list }">
						<div style="height: 900px; width: 100%">
							<li>
								<p><strong>상품이 존재하지 않습니다.</strong></p>
							</li>
						</div>
						</c:if>
					</ul>
					<script>
						
					var isLoggedIn = <%= isLoggedIn ? "true" : "false" %>;
					console.log("isLoggedIn: " + isLoggedIn); // isLoggedIn 값을 콘솔에 출력
					isLoggedIn = (isLoggedIn === true || isLoggedIn === "true");

					function toggleHeart(element) {
						if (!isLoggedIn) {
							alert("로그인이 필요합니다.");
							window.location.href = "${path2}/member/login.do"; // 로그인 페이지 URL로 리디렉션
							return;
						}

						if (element.classList.contains('fa-regular')) {
							element.classList.remove('fa-regular');
							element.classList.add('fa-solid');
						} else {
							element.classList.remove('fa-solid');
							element.classList.add('fa-regular');
						}
					}
					
					</script>

				</div>
		</main>
		<footer class="footer" id="ft">
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>