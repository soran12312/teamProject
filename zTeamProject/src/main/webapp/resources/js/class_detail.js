$(function(){
	if(${sessionScope.email ne map.email}){ // 404에러 방지용(세션의 이메일과 게시글의 작성자 이메일이 다를 경우 버튼 생성되기때문에 같은 조건 걸어준다.)
		if(${map.current_member ge map.max_member}){ // 현재인원수가 최대인원수 이상일 경우
			alert("마감된 강좌입니다.");
		}else{ // 현재 인원수가 최대인원수보다 적을 경우
			$('.bo_v_com').on("click","#class_Join",function(){ // 강좌신청버튼 클릭 시
				var param = {"email" : "${sessionScope.email}"
							, "class_number" : "${map.class_number}"
							};
				
				$.ajax({
					type	: 'post'
					,data	: param
					,url	: '/zTeamProject/class_Join.do' // 강좌 신청
					,success	: function(result){
						alert(result); // 신청결과 경고창으로 출력
						location.href = '/zTeamProject/class_detail.do?class_number='+${map.class_number};
					}//이후 강좌상세페이지로 리다이렉팅(강좌 현재 신청인원 새로고침하기위해서)
					,error	: function(err){
						alert('error');
						console.log(err);
					}
				}); // end of ajax
			}); // end of on(강좌신청버튼 클릭이벤트)
		} // end of if(강좌 신청인원이 최대인원보다 적은지 확인)
	} // end of if(로그인 한 사람과 글 작성자가 다른 사람이면 true)
		
	if(${sessionScope.email eq map.email}){ // 404에러 방지용(세션의 이메일과 게시글의 작성자 이메일이 같을 경우 버튼 생성되기때문에 같은 조건 걸어준다.)
		$("#class_delete").click(function(){ // 강좌삭제 버튼 클릭 시
			
			if(confirm("정말 삭제하시겠습니까?")){ // 확인문구 출력 후 확인 시 삭제, 취소 시 삭제 안함
				alert("삭제되었습니다."); // 삭제 경고창 출력
				location.href = '/zTeamProject/class_delete.do?class_number='+${map.class_number}; // 강좌 삭제
			}
		});
		
	} // end of if(로그인 한 사람과 글 작성자가 같은 사람이면 true)
	

		// 원래 탬플릿에 있던 제이쿼리
	$("a.view_image").click(function() {
	        window.open(this.href, "large_image", "location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
	        return false;
	    });

	    // 이미지 리사이즈
	$("#bo_v_atc").viewimageresize();
	    
	
	function board_move(href)
	{
	    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
	}
	
	function board_move(href)
	{
	    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
	}
	
	// 글자수 제한
	var char_min = parseInt(0); // 최소
	var char_max = parseInt(0); // 최대
	
}); // end of $