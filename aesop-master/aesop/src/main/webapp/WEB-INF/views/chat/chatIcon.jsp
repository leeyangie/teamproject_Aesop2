<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path2" value="${pageContext.servletContext.contextPath }" />

<section class="chat_wrap">
		<nav class="chat_icon" id="chatIcon"><i class="fa-regular fa-message"></i></nav>
		<div id="chatModal">
			<button id="close-btn">&times;</button>
			<p>채팅 모달 창입니다.</p>
		</div>
	</section>
	

<script>
    // 모달 열기 함수
    function openModal() {
        document.getElementById('chatModal').style.display = 'block';
        // 팝업 상태를 sessionStorage에 저장
        sessionStorage.setItem('chatModalOpen', 'true');
    }

    // 모달 닫기 함수
    function closeModal() {
        document.getElementById('chatModal').style.display = 'none';
        // 팝업 상태를 sessionStorage에서 제거
        sessionStorage.removeItem('chatModalOpen');
    }

    // DOMContentLoaded 이벤트를 사용하여 DOM이 완전히 로드된 후 이벤트 리스너를 설정합니다.
    document.addEventListener('DOMContentLoaded', function () {
        // sessionStorage에서 팝업 상태 확인
        var isChatModalOpen = sessionStorage.getItem('chatModalOpen');
        // 팝업이 열려 있는 경우 모달 열기
        if (isChatModalOpen === 'true') {
            openModal();
        }

        // 채팅 아이콘 클릭 시 모달 열기
        document.getElementById('chatIcon').addEventListener('click', openModal);

        // X 버튼 클릭 시 모달 닫기
        document.getElementById('close-btn').addEventListener('click', closeModal);
    });
</script>