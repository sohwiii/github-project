package global.sesoc.cashbook.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import global.sesoc.cashbook.dao.MemberDAO;
import global.sesoc.cashbook.vo.MemberVO;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberDAO memberDAO;
	
	/**
	 * 회원 가입 폼 보기
	 */
	@RequestMapping(value ="signup", method = RequestMethod.GET)
	public String signup() {
		return "signupForm";
	}
	/**
	 * 회원 가입 처리
	 */
	@RequestMapping (value="signup", method=RequestMethod.POST)
	public String signup(MemberVO memberVO) {
		int result = memberDAO.insert(memberVO);
		if (result != 1) {
			//DB저장에 실패한 경우 가입폼으로 이동
			return "signupForm";
		}
		//저장 성공한 경우 메인화면으로 이동
		return "redirect:/";
	}
	
	/**
	 * 로그인 폼 보기
	 */
	@RequestMapping (value="login", method=RequestMethod.GET)
	public String loginForm() {
		return "loginForm";
	}
	
	/**
	 * 로그인 처리
	 */
	@RequestMapping (value="login", method=RequestMethod.POST)
	public String login(String userid, String userpwd, Model model, HttpSession session) {
		
		MemberVO member = memberDAO.getMember(userid);
		
		//ID와 비밀번호가 맞으면 세션에 ID와 회원이름을 저장하고 메인화면으로 이동
		if (member != null && member.getUserpwd().equals(userpwd)) {
			session.setAttribute("loginId", member.getUserid());
			return "redirect:/";
		}
		//맞지 않으면 로그인폼으로 이동
		else {
			return "loginForm";
		}
	}
	
	/**
	 * 로그아웃 처리
	 */
	@RequestMapping (value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
