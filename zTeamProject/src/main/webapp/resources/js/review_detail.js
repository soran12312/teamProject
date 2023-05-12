
$(function(){	
	if(${sessionScope.email eq map.email}){
		$("#review_delete").click(function(){
			
			if(confirm("정말 삭제하시겠습니까?")){
				alert("삭제되었습니다.");
				location.href = '/zTeamProject/review_delete.do?review_number='+${map.review_number};
			}
		});
		
	} // end of if(로그인 한 사람과 글 작성자가 같은 사람이면 true)
	

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