package com.my.chat.model;

import com.my.chat.domain.MemberVO;

public interface MemberDao {
	public MemberVO login(MemberVO vo);
	public void signUp(MemberVO vo);
	public void uploadImg(String profilePic,String id);
}	
