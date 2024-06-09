<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<title>LOGIN</title>
	<jsp:include page="../include/head.jsp"></jsp:include>
	<style>
		#login-fullwrap{
            width: 100%;
            height: 900px;
            background-image: url(${path2}/resources/images/login/login_image.png);
            display: flex;
            justify-content: center;
            align-items: center;
            background-repeat: no-repeat;
            background-size: 100% auto;
            background-position: center;
        }

        #login-window {
            width: 560px;
            height: 80%;
            background-color: #FFFEF2;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 90px;

        }

        #login-table {
            clear: both;
            width: 400px;
            height: 500px;
        }

        .login-input {
            border: 0;
            line-height: 4em;
            border-bottom: 1px solid #C5C5C5;
            background-color: transparent;
            width: 400px;
        }

        .login-input:focus {
            cursor: text; 
            outline: none;
        }

        .square-button {
            width: 190px;
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
            width: 190px;
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

        .square-button-fa2:hover { 
            background-color: #F6F5E8;
            font-weight: 700;
        }

        .square-button:hover {
            background-color: black;
            font-weight: 700;
        }

        .text18 { 
            height: 40px;
            font-size: 18px;

        }

        #text24 {
            font-size: 24px;
            height: 80px;

        }

        .square-button-fa2 {
            width: 400px;
            height: 44px;
            background-color: transparent;
            color: #252525;
            border: 1px solid #252525;
            display: flex;
            justify-content: center;
            align-items: center;
        }
	</style>
</head>
<body>
	<!-- 헤더 부분 include -->
	<header>
		<jsp:include page="../include/header.jsp"></jsp:include>
	</header>
	<div class="container">
		<main>
            <div id="login-fullwrap">
                <div id="login-window">
                    <form action="${path2 }/member/loginPro.do" method="post" name="loginForm">
	                    <table id="login-table">
	                        <tbody>
	                            <tr >
	                                <td colspan="2" id="text24">로그인</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2"><input type="text" name="email" id="email" placeholder="아이디" autofocus required class="login-input"></td>
	                            </tr>
	                            <tr>
	                                <td colspan="2"><input type="password" name="pw" id="pw" placeholder="비밀번호" required class="login-input"></td>
	                            </tr>
	                            <tr>
	                                <td><button type="submit" class="square-button">로그인</button></td>
	                                <td><button type="reset" class="square-button-fa">취소</button></td>
	                            </tr>
	                            <tr>
	                                <td colspan="2" class="text18">회원이 아니신가요?</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2">회원가입을 통해 주문 내역을 확인하고, 위시리스트에 관심 제품을 저장하거나, 저장된 정보를 사용하여 더 빠른 온라인 결제 경험을 즐기실 수 있습니다.</td>
	                            </tr>
	                            <tr>
	                                <td colspan="2"><button type="button" class="square-button-fa2" onclick="redirectToJoin()">회원가입</button></td>
	                            </tr>
	                        </tbody>
	                    </table>
                    </form>
                </div>
            </div>
            <script>
                function loginFaiure() {
                    alert("로그인 실패");
                }
            </script>
            <script>
			    function redirectToJoin() {
			        window.location.href = "${path2}/member/join.do";
			    }
			</script>
		</main>
		<footer>
			<jsp:include page="../include/footer.jsp"></jsp:include>
		</footer>
	</div>

</body>
</html>