package global.sesoc.cashbook.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.cashbook.dao.CashbookDAO;
import global.sesoc.cashbook.vo.CashbookVO;

@Controller
public class CashbookController {
	private static final Logger logger = LoggerFactory.getLogger(CashbookController.class);
	
	@Autowired
	CashbookDAO cashbookDAO;
	
//	@RequestMapping(value = "cashbook", method = RequestMethod.GET)
//	public String list(String userid, Model model) {
//		ArrayList<CashbookVO> cashbooklist = cashbookDAO.list(userid);
//		logger.info("결과:{}",cashbooklist);
//		model.addAttribute("cashbooklist",cashbooklist);
//		model.addAttribute("loginid",userid);
//		
//		return "list";
//	}
	
	@RequestMapping (value="cashbook", method=RequestMethod.GET)
	public String insertForm() {
		return "cashbook";
	}
	
	@RequestMapping (value="cashbook", method=RequestMethod.POST)
	public String insert(CashbookVO cashbook, HttpSession session,	Model model) {
		String userid = (String) session.getAttribute("loginId");
		cashbook.setUserid(userid);
		logger.info("저장할 글 정보 : {}", cashbook);
		cashbookDAO.insert(cashbook);
		return "cashbook";
	}
	

	
}
