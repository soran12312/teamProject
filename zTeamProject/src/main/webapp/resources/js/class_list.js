


$(function(){
   	
	$('#cate').change(function(){ // 카테고리 셀렉트태그 변경 시
		location.href = '/zTeamProject/cate_list.do?category_number='+$(this).val(); // 카테고리검색으로 리다이렉팅
	});
	
	var selectedValue = localStorage.getItem('selectedValue');
    
    
    if (selectedValue) {
        $('#cate').val(selectedValue); // 이전에 선택한 값이 있다면, 해당 값으로 선택 상태를 설정
    } else {
        $('#cate').val(0); // 이전에 선택한 값이 없을 경우 0번 옵션 선택
    }

    $('#cate').change(function(){ // 카테고리 셀렉트태그 변경 시
        var selectedValue = $(this).val();
        localStorage.setItem('selectedValue', selectedValue); // 선택한 값 저장
        location.href = '/zTeamProject/cate_list.do?category_number='+selectedValue; // 카테고리 검색으로 리다이렉팅
    });
	
}); // end of $