package global.sesoc.cashbook.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import global.sesoc.cashbook.vo.CashbookVO;

@Repository
public class CashbookDAO {

	@Autowired
	SqlSession sqlsession;

	public int insert(CashbookVO cashbook) {
		CashbookMapper mapper = sqlsession.getMapper(CashbookMapper.class);
		
		int result = 0;
		try {
			result = mapper.insert(cashbook);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
//	public ArrayList<CashbookVO> list(String userid) {
//		CashbookMapper mapper = sqlsession.getMapper(CashbookMapper.class);
//		ArrayList<CashbookVO> cashbooklist = mapper.list(userid);
//		return cashbooklist;
//	}


}
