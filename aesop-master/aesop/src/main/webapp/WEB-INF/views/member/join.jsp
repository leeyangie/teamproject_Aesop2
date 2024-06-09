<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />
<!DOCTYPE>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>JOIN</title>
	<jsp:include page="../include/head.jsp"></jsp:include>
	<style>
		#join-fullwrap{
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

        #join-window {
            width: 560px;
            height: 80%;
            background-color: #FFFEF2;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 80px;

        }

        #join-table {
            clear: both;
            width: 400px;
            height: 640px;
        }

        .join-input {
            border: 0;
            line-height: 2em;
            border-bottom: 1px solid #C5C5C5;
            background-color: transparent;
            width: 400px;
        }
        .join-input:focus { 
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

        .square-button {
            width: 400px;
            height: 44px;
            background-color: #252525;
            color: #FFFEF2;
            border: 1px solid #252525;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 10px;
        }

        .term {
            width: 400px;
            height: 70px;
            overflow-y:auto;
            border: 1px solid #252525;
            font-size: 13px;            
        }

        .form-check-label { 
            line-height: 2em;
        }
	</style>
</head>
<body>
	<div class="content">
        <!-- 헤더 부분 include -->
		<header id="hd" class="container is-fullhd">
			<jsp:include page="../include/header.jsp"></jsp:include>
		</header>
        <main>
            <div id="join-fullwrap">
                <div id="join-window">
            	<form name="frm1" id="frm1" action="${path2 }/member/joinPro.do" method="post" onsubmit="return joinCheck(this)">
                	<table id="join-table">
                            <tbody>
                                <tr>
                                    <td id="text24">회원가입</td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="text" name="name" id="name" placeholder="이름 입력" maxlength="40" required class="join-input">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="email" name="email" id="email" placeholder="이메일 입력" pattern="^\w+((\.\w+)?)+@\w+.?\w+\.\w+$" maxlength="80" required class="join-input">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="password" name="pw" id="pw" placeholder="비밀번호" required class="join-input" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,12}$">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="password" name="pw2" id="pw2" placeholder="비밀번호 확인 입력" maxlength="12" class="join-input" required pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,12}$">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input type="checkbox" id="ck_item1" name="ck_item1" class="form-check-input" required>
                                            <label for="ck_item1" class="form-check-label">본인은 만 14세 이상입니다 (필수)</label>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input type="checkbox" id="ck_item2" name="ck_item2" class="form-check-input" required>
                                            <label for="ck_item2" class="form-check-label">이용 약관에 동의합니다 (필수)</label>
                                        </div>
                                        <article class="term">
                                            <jsp:include page="term2.jsp"></jsp:include>
                                        </article>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input type="checkbox" id="ck_item3" name="ck_item3" class="form-check-input" required>
                                            <label for="ck_item2" class="form-check-label">개인정보 수집 및 이용조건에 동의합니다 (필수)</label>
                                        </div>
                                        <article class="term">
                                            <jsp:include page="term3.jsp"></jsp:include>
                                        </article>
                                    </td>
                                </tr>
                                <tr>
                                    <td><label onclick="protocol()" class="form-check-label"><strong>전체 약관에 동의</strong></label></td>
                                </tr>
                                <tr>
                                    <td><button type="button" class="square-button" id="in_btn1">회원가입</button></td>
                                </tr>
                            </tbody>
                        </table>
		            </form>
		            <script>
					    var ck_item1 = document.getElementById("ck_item1")
					    var ck_item2 = document.getElementById("ck_item2");
					    var ck_item3 = document.getElementById("ck_item3");
					    var in_btn1 = document.getElementById("in_btn1");
					    in_btn1.addEventListener("click", function(event){
					        event.preventDefault(); // 버튼의 기본 동작 중지
					
					        if(ck_item1.checked && ck_item2.checked && ck_item3.checked && validateInputs()){
					            document.getElementById("frm1").submit(); // 폼 제출
					        } else {
					            alert("필수항목을 모두 체크하고, 입력 사항을 모두 채워주세요.");
					        }
					    });
					
					    function protocol(){
					        ck_item2.checked = true;
					        ck_item3.checked = true;
					    }
					
					    function validateInputs() {
					        var name = document.getElementById("name").value.trim();
					        var email = document.getElementById("email").value.trim();
					        var pw = document.getElementById("pw").value.trim();
					        var pw2 = document.getElementById("pw2").value.trim();

					        // 비밀번호 패턴 검사
					        var pwPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,12}$/;
					        if (!pwPattern.test(pw)) {
					            alert("비밀번호는 8-12자 사이의 문자, 숫자, 특수 문자 조합이어야 합니다.");
					            return false;
					        }

					        // 비밀번호와 비밀번호 확인 일치 여부 확인
					        if (pw !== pw2) {
					            alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
					            return false;
					        }

					        // 각 필드가 비어 있는지 확인
					        if (name === "" || email === "" || pw === "" || pw2 === "") {
					            return false;
					        }

					        return true;
					    }
					</script>
		            
		            <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	        	</div>
	        </div>
	</main>
	<footer>
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</footer>
</div>

</body>
</html>