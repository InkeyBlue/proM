package com.my.chat.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.my.chat.domain.RoomVO;
import com.my.chat.model.RoomDao;
import com.my.chat.service.RoomService;
@Service
public class RoomServiceImpl implements RoomService{
	@Resource
	private RoomDao roomService;
	
	
	@Override
	public void sendMessage(RoomVO vo) {
		roomService.sendMessage(vo);
	}

	@Override
	public List<RoomVO> getChatbyRoomNum(String serial_no,String chat_no) {
		
		return roomService.getChatbyRoomNum(serial_no,chat_no);
	}

}
