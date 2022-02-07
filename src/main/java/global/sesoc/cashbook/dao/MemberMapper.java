package global.sesoc.cashbook.dao;

import global.sesoc.cashbook.vo.MemberVO;

public interface MemberMapper {

	public int insert(MemberVO memberVO);

	public MemberVO getMember(String userid);



}
