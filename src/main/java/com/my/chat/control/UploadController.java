package com.my.chat.control;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.my.chat.domain.MemberVO;
import com.my.chat.service.MemberService;

@Controller
public class UploadController {
	@Resource
	 private MemberService memberService;
	
	@RequestMapping("uploadImg.do")
	public ModelAndView uploadImg(HttpServletRequest request,HttpSession session,MemberVO uvo) throws Exception {
		MemberVO pvo = (MemberVO) session.getAttribute("mvo");
		String id= pvo.getId();
		System.out.println(pvo);
		String root = request.getSession().getServletContext().getRealPath("/");
		String path = root+"\\upload\\";
		System.out.println(id);
		/*MemberVO pvo = (MemberVO) session.getAttribute("mvo");*/
		/*	if(mvo==null) {
			return new ModelAndView("redirect:/index.jsp");
		}*/
		MultipartFile mfile = uvo.getUploadFile();
		System.out.println(mfile);
		/*MultipartFile mfile = mvo.getUploadFile();*/
		
		if(mfile.isEmpty()==false) {
			String fileName=mfile.getOriginalFilename();
			
			String newFileName = System.currentTimeMillis()+fileName;
			pvo.setProfilePic(newFileName);
			mfile.transferTo(new File(path+pvo.getProfilePic()));
			memberService.uploadImg(newFileName,id);
		}
		
		return new ModelAndView("redirect:/signUp.jsp");
	}
	
	@RequestMapping("login2.do")
	public ModelAndView login(HttpServletRequest request,MemberVO pvo) throws Exception {
		
		MemberVO mvo=memberService.login(pvo);
		System.out.println(mvo);
			if(mvo!=null) {
				request.getSession().setAttribute("mvo", mvo);
			}else {
				return new ModelAndView("login","1",1);
			}
			
		return new ModelAndView("redirect:/signUp.jsp");
	}
	
}
