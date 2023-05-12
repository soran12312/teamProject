$(function(){
   	
	$('#cate').change(function(){ // 카테고리 셀렉트태그 변경 시
		location.href = '/zTeamProject/cate_list.do?category_number='+$(this).val(); // 카테고리검색으로 리다이렉팅
	});
	
	
}); // end of $