package com.my.chat.model.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.my.chat.domain.RoomVO;
import com.my.chat.model.RoomDao;

@Repository
public class RoomDaoImpl implements RoomDao{
	
	@Resource
	private SqlSession sqlSession;
	
	@Override
	public void sendMessage(RoomVO vo) {
		sqlSession.insert("roomMapper.sendMessage",vo);
		
	}

	@Override
	public List<RoomVO> getChatbyRoomNum(String serial_no,String chat_no) {
		 HashMap params=new HashMap();
		 params.put("param1", serial_no);
		 params.put("param2", chat_no);
		return sqlSession.selectList("roomMapper.getChatbyRoomNum", params);
	}
	
}
