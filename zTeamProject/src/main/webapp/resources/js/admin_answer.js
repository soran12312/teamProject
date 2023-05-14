$(function(){
	
	$('#question').on("click",".question",function(){
		$(this).next().toggle(); // 문의 테이블 클릭 시 문의 상세내용 보이고 다시 클릭 시 안보이게 함
	})
	
	$('.question').hover(function(){ // 문의내역 마우스 올라갈 시 손가락모양으로 바뀌게하기
		$(this).css("cursor","pointer");
	});
	
	$('.question').on('click', function() {
	  $(this).next('.answer').toggle();
	});
	
	// 수정 폼 제출 시 질문 상태 업데이트
	$('#edit-form').on('submit', function(e) {
	  e.preventDefault();
	  // 폼 데이터를 가져와서 서버로 전송하는 로직 작성
	  // 예시: AJAX 요청을 통해 서버에 수정된 질문 정보 전송
	
	  // 수정 완료 후 화면 갱신 또는 메시지 표시 등의 로직 작성
	});
	
	
}); // end of $

