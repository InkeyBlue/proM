package com.my.chat.model;

import java.util.List;

import com.my.chat.domain.RoomVO;

public interface RoomDao {
	public void sendMessage(RoomVO vo);
	public List<RoomVO> getChatbyRoomNum(String serial_no,String chat_no);
	
}
