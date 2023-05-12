$(function(){	
	if(${sessionScope.email eq map.email}){
		$("#review_delete").click(function(){
			
			if(confirm("정말 삭제하시겠습니까?")){
				alert("삭제되었습니다.");
				location.href = '/zTeamProject/review_delete.do?review_number='+${map.review_number};
			}
		});
		
	} // end of if(로그인 한 사람과 글 작성자가 같은 사람이면 true)
	
}); // end of $