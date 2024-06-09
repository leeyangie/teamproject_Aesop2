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
        #section-top { 
            height: 150px;
            background-color: #F6F5E8;
            font-size: 26px;
            font-weight: 500;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #section-main { 
            margin-top: 80px;
            display: flex;
            height: 900px;
        }

        #main-contents {
            width: 70%;
        }

        #main-contents-wrap { width: 600px;}

        #sidebar { 
            width: 30%;
            padding-left: 100px;
            line-height: 3em;
		}
		.sidebar-menu:hover a {border-bottom: 1px solid #252525;}
		
        }
        .selectcate { 
            background-color: transparent;
            border: 0;
            border-bottom: 1px solid #C5C5C5;
            height: 50px;
            margin-bottom: 20px;
            width: 300px;
            margin-right: 10px;
            line-height: 2em;
        }

        input { 
            background-color: transparent;
            border: 0;
            border-bottom: 1px solid #C5C5C5;
            height: 50px;
            margin-bottom: 20px;
            width: 300px;
            margin-right: 10px;
        }
        .label {
            margin-bottom: 20px;
        }
        textarea { 
            background-color: transparent;
            border: 0;
            border-bottom: 1px solid #C5C5C5;
            margin-bottom: 20px;
            width: 610px;
        }

        .file { border: 0;}

        .square-button {
            width: 240px;
            height: 44px;
            background-color: #252525;
            color: #FFFEF2;
            border: 1px solid #252525;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 10px;
        }

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

        .square-button-fa:hover { 
            background-color: #F6F5E8;
            font-weight: 700;
        }

        .square-button:hover {
            background-color: black;
            font-weight: 700;
        }

        .buttons { 
            display: flex;
            margin-top: 30px;
        }
	</style>
</head>
<body>
	<div class="content">
		<header id="hd-wrap" class="container is-fullhd">
			<jsp:include page="../include/header.jsp"></jsp:include>
		</header>
		
		<main class="contents">
	         <section id="section-top">관리자 모드</section>
	            <section id="section-main">
	                <div id="sidebar">
	                    <div class="sidebar-menu"><a href="">회원 관리</a></div>
	                    <div class="sidebar-menu"><a href="">게시판 관리</a></div>
	                    <div class="sidebar-menu"><a href="">상품 목록 관리</a></div>
	                    <div class="sidebar-menu"><a href="">인벤토리 관리</a></div>
	                </div>
	                <div id="main-contents">
	                    <div id="main-contents-wrap">
	                        <div style="font-size: 20px; margin-bottom: 40px;">상품 등록</div>
	                        <div><label for="category">카테고리</label></div>
	                        <form action="${path2 }/product/insertPro.do" method="post" enctype="multipart/form-data">
	                        	<div style="display: flex;">
	                                <div class="selectcate">
	                                    <select name="category" id="category" onchange="updateSubCategory()" required>
	                                        <option value="">메인 카테고리 선택</option>
	                                        <option value="s">스킨케어</option>
	                                        <option value="b">바디&핸드</option>
	                                        <option value="h1">홈</option>
	                                        <option value="h2">헤어</option>
	                                        <option value="p">향수</option>
	                                        <option value="k">키트&트래블</option>
	                                    </select>
	                                </div>
	                                <div class="selectcate">
	                                    <select class="selectcate" name="category_sub" id="category_sub" required>
	                                        <option value="">서브 카테고리 선택</option>
	                                    </select>
	                                </div>
	                            </div>
	                            <div style="display: flex;">
	                                <div>
	                                    <div><label for="pname">상품명</label></div>
	                                    <div><input type="text" name="pname" id="pname" class="input" maxlength="100" required ></div>
	                                </div>
	                                <div>
	                                    <div><label for="price">가격</label></div>
	                                    <div><input type="number" min="0" step="100" value="10000" name="price" id="price" class="input" /></div>
	                                </div>
	                            </div>
	                            <div>
	                                <div><label for="com">상품 설명</label></div>
	                                <div><textarea name="com" id="com" rows="8" cols="80" maxlength="980" class="textarea"></textarea></div>
	                            </div>
	                            <div><label for="img">상품 메인 이미지</label></div>
	                            <div><input class="file" type="file" name="img1" id="img1" accept="image/*" required/></div>
	                            <div><label for="img">상품 상세 이미지</label></th></div>
	                            <div><input class="file" type="file" name="img2" id="img2" accept="image/*" required/></div>
	                            <div><label for="img">상품 썸네일 이미지</label></div>
	                            <div><input class="file" type="file" name="img3" id="img3" accept="image/*" required/></div>
	                            <div class="buttons">
	                                <button type="submit" class="square-button">상품 등록</button>
	                                <button type="button" class="square-button-fa">상품 목록</button>
	                            </div>
	                        </div>
	                    </form>
	                </div>
	            </section>
		</main>
	</div>
	<!-- footer 부분 include -->
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
	<script>
    // 카테고리 값이 변경되었을 때 실행되는 함수
    function updateSubCategory() {
       // 선택된 카테고리 값 가져오기
       var category = document.getElementById("category").value;
       
       // 서브 카테고리를 포함하는 select 요소 가져오기
       var subCategorySelect = document.getElementById("category_sub");
       
       // 서브 카테고리 옵션 초기화
       subCategorySelect.innerHTML = "";
       
       // 선택된 카테고리 값에 따라 서브 카테고리 옵션 추가
       switch (category) {
           case "s": // 스킨케어
               subCategorySelect.innerHTML += '<option value="1">클렌저</option>';
               subCategorySelect.innerHTML += '<option value="2">각질 제거</option>';
               subCategorySelect.innerHTML += '<option value="3">트리트먼트&마스크</option>';
               subCategorySelect.innerHTML += '<option value="4">토너</option>';
               subCategorySelect.innerHTML += '<option value="5">하이드레이터</option>';
               break;
           case "b": // 바디&핸드
           	subCategorySelect.innerHTML += '<option value="1">핸드</option>';
               subCategorySelect.innerHTML += '<option value="2">바디</option>';
               subCategorySelect.innerHTML += '<option value="3">퍼스널 케어</option>';
               subCategorySelect.innerHTML += '<option value="4">번들</option>';
               subCategorySelect.innerHTML += '<option value="5">핸드 및 바디 케어 기프트</option>';
               break;
           case "h1": // 홈
           	subCategorySelect.innerHTML += '<option value="1">홈</option>';
               subCategorySelect.innerHTML += '<option value="2">문학</option>';
               subCategorySelect.innerHTML += '<option value="3">홈 케어 기프트</option>';
               break;
           case "h2": //헤어
           	subCategorySelect.innerHTML += '<option value="1">샴푸</option>';
               subCategorySelect.innerHTML += '<option value="2">컨디셔너</option>';
               subCategorySelect.innerHTML += '<option value="3">트리트먼트</option>';
               subCategorySelect.innerHTML += '<option value="4">그루밍</option>';
               break;
           case "p": //향수
           	subCategorySelect.innerHTML += '<option value="1">우라논</option>';
               subCategorySelect.innerHTML += '<option value="2">글롬</option>';
               subCategorySelect.innerHTML += '<option value="3">이더시스</option>';
               subCategorySelect.innerHTML += '<option value="4">미라세티</option>';
               subCategorySelect.innerHTML += '<option value="5">카르스트</option>';
               break;
           case "k": //키트&트래블
           	subCategorySelect.innerHTML += '<option value="1">시즈널 기프트 키트</option>';
               subCategorySelect.innerHTML += '<option value="2">스킨 케어 키트</option>';
               subCategorySelect.innerHTML += '<option value="3">바디&핸드 케어 키트</option>';
               subCategorySelect.innerHTML += '<option value="4">트래블</option>';
       		break;
	        }
	    }
	</script>
</body>
</html>