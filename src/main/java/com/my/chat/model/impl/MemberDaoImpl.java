package com.my.chat.model.impl;

import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.chat.domain.MemberVO;
import com.my.chat.model.MemberDao;
@Repository
public class MemberDaoImpl implements MemberDao{
	@Resource
	private SqlSession sqlSession; 
	
	
	@Override
	public MemberVO login(MemberVO vo) {
		 
		return sqlSession.selectOne("memberMapper.login",vo);
	}


	@Override
	public void signUp(MemberVO vo) {
		sqlSession.insert("memberMapper.signUp", vo);
	
	}


	@Override
	public void uploadImg(String id,String profilePic) {
		HashMap params = new HashMap();
		params.put("param1", profilePic);
		params.put("param2", id);
		sqlSession.update("memberMapper.uploadImg",params);
	}

}
