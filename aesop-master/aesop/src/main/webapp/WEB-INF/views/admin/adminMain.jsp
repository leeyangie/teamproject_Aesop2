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
            height: 500px;
        }

        .tab-wrap {
            margin-top: 100px;
        }

        .adcolumns-list {
            width: 60%;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            grid-gap: 20px;
            padding: 20px;
            margin: 0 auto;
        }

        .column {
            text-align: center;
            background-color: transparent;
            padding: 20px;
            font-size: 18px;
            border: 1px solid #252525;
        }

        .column:hover { 
            background-color: #252525;
            color: #FFFEF2;
        }
     </style>
</head>
<body>
	<div class="content">
		<header>
			<jsp:include page="../include/header.jsp"></jsp:include>
		</header>
		
		<main class="contents">
	         <section id="section-top">관리자 모드</section>
             <section id="section-main">
                <div class="tab-wrap">
                    <ul class="adcolumns-list">
                        <a href="">
                            <li class="column"><div>회원관리</div></li>
                        </a>
                        <a href="">
                            <li class="column"><div>상품관리</div></li>
                        </a>
                        <a href="">
                            <li class="column"><div>인벤토리 관리</div></li>
                        </a>
                        <a href="">
                            <li class="column"><div>게시판 관리</div></li>
                        </a>
                        <a href="">
                            <li class="column"><div>QnA 관리</div></li>
                        </a>
                        <a href="${path2 }/product/insert.do">
                            <li class="column"><div>상품 등록</div></li>
                        </a>
                        <a href="">
                            <li class="column"><div>인벤토리 등록</div></li>
                        </a>
                        <a href="">
                            <li class="column"><div>게시판 등록</div></li>
                        </a>

                    </ul>
                </div>
             </section>
      	</main>
        <footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
        </footer>
    </div>											
</body>
</html>	         
</body>
</html>