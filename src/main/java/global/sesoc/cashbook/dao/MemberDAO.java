package global.sesoc.cashbook.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.cashbook.vo.MemberVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSession sqlSession;

	/**
	 * 회원 가입 처리
	 * @param member
	 */
	public int insert(MemberVO memberVO) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		
		int result = 0;
		try {
			result = mapper.insert(memberVO);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public MemberVO getMember(String userid) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		MemberVO memberVO = mapper.getMember(userid);
		return memberVO;
	}
	
}
