package com.my.chat.service;

import com.my.chat.domain.MemberVO;

public interface MemberService {
	public MemberVO login(MemberVO vo);
	public void signUp(MemberVO vo);
	public void uploadImg(String id,String profilePic);
	
}
