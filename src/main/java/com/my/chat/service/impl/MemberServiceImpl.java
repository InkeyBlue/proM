package com.my.chat.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.my.chat.domain.MemberVO;
import com.my.chat.model.MemberDao;
import com.my.chat.service.MemberService;
@Service
public class MemberServiceImpl implements MemberService{
	@Resource
	private MemberDao memberDao;
	
	@Override
	public MemberVO login(MemberVO vo) {
		// TODO Auto-generated method stub
		return memberDao.login(vo);
	}

	@Override
	public void signUp(MemberVO vo) {
		memberDao.signUp(vo);
		
		
	}

	@Override
	public void uploadImg(String id,String profilePic) {
	
	memberDao.uploadImg(profilePic,id);
		
	}

}
