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
		.tablink:hover a {border-bottom: 1px solid #252525;}
		
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
	                    <a class="tablink" href="adminTab.jsp?tab=boardtab" >회원 관리</a>
	                    <a class="tablink" href="${path2 }/board/boardlist.do">게시판 관리</a>
	                    <a class="tablink" href="adminTab.jsp?tab=boardtab">게시판 등록</a>
	                    <a class="tablink" href="${path2 }/product/listAll.do">상품 관리</a>
	                    <a class="tablink" href="${path2 }/product/insert.do">상품 등록</a>
	                    <a class="tablink" href="adminTab.jsp?tab=inventorytab">인벤토리 관리</a>
	                    <a class="tablink" href="adminTab.jsp?tab=inventorytab">인벤토리 등록</a>
	                </div>
	                <div id="membertab" class="tabcontent" style="<%= "Home".equals(request.getParameter("tab")) ? "display: block;" : "display: none;" %>">
	                    
	                </div>
                	<div id="boardtab" class="tabcontent">
                	
                	</div>
                	<div id="producttab" class="tabcontent">
                	
                	</div>
                	<div id="inventorytab" class="tabcontent">
                	
                	</div>
            	</section>
			</main>
		<footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>