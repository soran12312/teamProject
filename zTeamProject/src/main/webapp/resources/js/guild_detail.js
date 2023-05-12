$(function(){
	if(${sessionScope.email eq map.email}){
		$("#guild_delete").click(function(){
			
			if(confirm("정말 삭제하시겠습니까?")){
				alert("삭제되었습니다.");
				location.href = '/zTeamProject/guild_delete.do?guild_number='+${map.guild_number};
			}
		});
	} // end of if(로그인 한 사람과 글 작성자가 같은 사람이면 true)
	
		$("#guild_join").click(function(){
			var param = { "chatroom"		:"${map.email}"
						,"email"			:"${sessionScope.email}"
						,"guild_number"		:"${map.guild_number}"
						,"current_member"	:"${map.current_member}"
						,"max_member"		:"${map.max_member}"
						};	
			
			$.ajax({
				 type 		: 'post'
				,data 		: param
				,url 		: '/zTeamProject/guild_join.do'
				,success 	: function(result){;
									if(result==1){
										alert("─=≡Σ((( つ•̀ω•́)つ 채팅방으로 이동합니다!");
										window.open("https://chatting--pum-i.run.goorm.site/?chatroom="+"${map.email}","_blank");
									}//END if
									else if(result==2){
										alert("관리자에게 문의하세요(T^T)");
										location.href ="/zTeamProject/main_view.do#support";
									}//END of else if
									else if(result==3){
										alert("정원초과입니다(T^T)");
										location.href = "/zTeamProject/guild_list.do?currentPage=1";
									}//END of else if
							}//END of success
				,error 		: function(err){alert(err);}
			});//END of ajax
		});//END of guild_join.click
		
});