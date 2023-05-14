$(function(){
	
	$('#question').on("click",".question",function(){
		$(this).next().toggle(); // 문의 테이블 클릭 시 문의 상세내용 보이고 다시 클릭 시 안보이게 함
	})
	
	$('.question').hover(function(){ // 문의내역 마우스 올라갈 시 손가락모양으로 바뀌게하기
		$(this).css("cursor","pointer");
	});
	
	$(".question").on("click", ".edit-btn", function() {
		  var questionRow = $(this).closest(".question");
		  var questionContent = questionRow.find(".question-content").text();
		
		  // 수정 폼 생성
		  var editForm = $("<form>").addClass("edit-form");
		  var textarea = $("<textarea>").val(questionContent);
		  var saveBtn = $("<button>").text("저장").addClass("save-btn");
		  
		  // 폼에 요소 추가
		  editForm.append(textarea);
		  editForm.append(saveBtn);
		  questionRow.after(editForm);
		
		  // 저장 버튼 클릭 시 수정 내용 전송
		  saveBtn.on("click", function(e) {
		    e.preventDefault();
		
		    // 수정한 내용 가져오기
		    var editedContent = textarea.val();
		
		    // 서버에 Ajax 요청 보내기
		    $.ajax({
		      url: "/updateQuestion", // 수정을 처리할 URL로 변경해야 합니다.
		      type: "POST",
		      data: {
		        questionNumber: questionNumber,
		        content: editedContent
		      },
		      success: function(response) {
		        // 수정이 성공적으로 완료되면 답변 상태를 업데이트합니다.
		        questionRow.find(".answer-state").text("답변완료");
		        // 수정 폼 제거
		        editForm.remove();
		      },
		      error: function() {
		        alert("수정 실패");
		      }
		    });
		  });
		});
	
	
}); // end of $


// 셀렉트박스 클릭시 db에서 가져오는 값 바뀌게 구현
$(function() {
    $("#answerStateFilter").on("change", handleChange);
   
});



// 셀렉트박스 클릭시 db에서 값 가져오는 함수
function handleChange() {
    const filter = $(this).val();
    
    console.log(filter);

    $.ajax({
      url: "./get-data",
      data: { filter: filter },
      dataType: "json",
      success: function(data) {
        // 받아온 데이터를 처리함
        console.log(data);
        
        
	      // 예시: 받아온 데이터를 테이블에 렌더링함
		   const table = $("#question tbody");
		   table.empty();
		      
		   data.forEach(function(item) {
		      
		    const row = $("<tr></tr>");
	        row.append(`<td style="padding:2px 10px 2px 10px;">${item.question_number}</td>`);
	        row.append(`<td style="padding:2px 10px 2px 10px;">${item.question_category}</td>`);
	        row.append(`<td style="padding:2px 10px 2px 10px;">${item.title}</td>`);
	        row.append(`<td style="padding:2px 10px 2px 10px;">${item.writing_date}</td>`);
	        
	        if(item.answer_state == 0)
	        {
	        
	        	row.append(`<td style="padding:2px 10px 2px 10px;">처리중</td>`);
	        }
	        if(item.answer_state == 1)
	        {
	        
	        	row.append(`<td style="padding:2px 10px 2px 10px;">답변완료</td>`);
	        }
	       
	       row.append(`<td style="padding:2px 10px 2px 10px;">
                    <a href="javascript:void(0);" onclick="showContent(${status.index})">답변하기</a>
                </td>`);
	       
	        table.append(row);
	      });
      },
      error: function(xhr, status, error) {
        console.error(error);
      }
    });
}  







