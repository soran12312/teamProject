import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

class AdminMapper {

	@Test
	void test() {
		fail("Not yet implemented");
	}
	
	
	/* 회원 목록(페이징 적용)테스트 */
    @Test
    public void testGetListPaging() {
        
        Criteria cri = new Criteria();
                         
        List list = mapper.getListPaging(cri);
        
        list.forEach(memberList -> log.info("" + memberList));
    }

}
