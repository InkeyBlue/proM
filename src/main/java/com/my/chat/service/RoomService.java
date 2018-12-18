package com.my.chat.service;

import java.util.List;

import com.my.chat.domain.RoomVO;

public interface RoomService {
	public void sendMessage(RoomVO vo);
	public List<RoomVO> getChatbyRoomNum(String serial_no,String chat_no);
}
