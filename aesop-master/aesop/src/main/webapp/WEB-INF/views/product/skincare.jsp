<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>스킨케어</title>
	<jsp:include page="../include/head.jsp"></jsp:include>
	<style>
		.cate-navwrap {
			width: 100%;
			height : 70px;
			background-color: #EBEADE;
		}
		.explore-tabwrap { width: 100%}
		.explore-tab{
			display: grid;
			grid-template-columns: 20% 20% 20% 20% 20%;
		}
	</style>
</head>
<body>
	<div class="content">
		<header>
			<jsp:include page="../include/header.jsp"></jsp:include>
		</header>
		<main>
			<div class="topmain">
				<img alt="스킨케어" src="${path2 }/resources/images/product/skincare/skincare.png">
				<div class="text25">스킨케어</div>
				<div>
					<p>피부는 환경과 라이프스타일, 식단에 따라 항상 변화하고 있습니다.
					<br>이솝 레인지는 이런 점을 고려해 다양한 선호와 니즈에 맞춰 피부 건강을 우수한 상태로 가꿀 수 있도록 도와줍니다.</p>
				</div>
			</div>
			<div class="cate-navwrap">
				<nav class="cate-nav">
					<ul>
						<li><a href="${path2 }/product/listAll.do?category=s" class="navbar-item" title="전체">
		                    모든
		                    <c:if test="${not empty categoryName}">
					            ${categoryName}
					        </c:if>
		                </a></li>
		                <li><a href="${path2 }/product/list.do?category=s&category_sub=1" class="navbar-item" title="클렌저">
		                    클렌저
		                </a></li>
		                <li><a href="${path2 }/product/list.do?category=s&category_sub=2" class="navbar-item" title="각질 제거">
		                    트리트먼트 & 마스크
		                </a></li>
		                <li><a href="${path2 }/product/list.do?category=s&category_sub=3" class="navbar-item" title="트리트먼트&마스크">
		                    토너
		                </a></li>
		                <li><a href="${path2 }/product/list.do?category=s&category_sub=4" class="navbar-item" title="토너">
		                    하이드레이터
		                </a></li>
		                <li><a href="${path2 }/product/list.do?category=s&category_sub=5" class="navbar-item" title="하이드레이터">
		                    스킨케어 기프트
		                </a></li>
		            </ul>
				</nav>
			</div>
			<div class="text25">유형별 제품 탐색하기</div>
			<div class="explore-tabwrap">
				<div class="explore-tab">
					<div class="explore-tabblock">
						<a class="explore-tabblock-link" href="${path2 }/resources/images/product/skincare/cleanser.png">
							<div><img alt="block1" src=""></div>
							<div>클렌저</div>
						</a>
					</div>
					<div class="explore-tabblock">
						<a class="explore-tabblock-link" href="${path2 }/resources/images/product/skincare/cleanser.png">
							<div><img alt="block2" src=""></div>
							<div>트리트먼트&마스크</div>
						</a>
					</div>
					<div class="explore-tabblock">
						<a class="explore-tabblock-link" href="${path2 }/resources/images/product/skincare/cleanser.png">
							<div><img alt="block3" src=""></div>
							<div>하이드레이터</div>
						</a>
					</div>
					<div class="explore-tabblock">
						<a class="explore-tabblock-link" href="${path2 }/resources/images/product/skincare/cleanser.png">
							<div><img alt="block4" src=""></div>
							<div>스킨케어 기프트</div>
						</a>
					</div>
				</div>
			</div>
		</main>
		<footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
	</div>	
</body>
</html>