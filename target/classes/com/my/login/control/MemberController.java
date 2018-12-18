package com.my.login.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.my.chat.domain.MemberVO;
import com.my.chat.service.MemberService;

@Controller
public class MemberController {
	@Resource
	private MemberService memberService;
	
	@RequestMapping("login.do")
	public ModelAndView login(HttpServletRequest request,MemberVO pvo) throws Exception {
			
		System.out.println("alert");
		MemberVO mvo=memberService.login(pvo);
		System.out.println(mvo);
			if(mvo!=null) {
				request.getSession().setAttribute("mvo", mvo);
			}else {
				return new ModelAndView("login","1",1);
			}
			System.out.println(mvo);
		return new ModelAndView("JspLoadTest","mvo",mvo);
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpServletRequest request) throws Exception{
		
		HttpSession session = request.getSession();
		MemberVO mvo = (MemberVO)session.getAttribute("mvo");
		if(mvo!=null) { //로그인된 상태라면...로그아웃
			session.invalidate();
		}
		return new ModelAndView("redirect:/index.jsp");//위에서 이미 세션에 바인딩 했다.
	}
	
}
