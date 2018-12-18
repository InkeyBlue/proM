package com.chat.my;



import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.my.chat.domain.MemberVO;
import com.my.chat.domain.RoomVO;



public class MyBatisUnitTest {
	@Test
	public void mybatisunit() throws Exception{
		Reader reader= Resources.getResourceAsReader("config/SqlMapConfig.xml");
		SqlSessionFactory factory=new SqlSessionFactoryBuilder().build(reader);
		
		SqlSession session=factory.openSession();
/*		RoomVO vo = new RoomVO(0,0,"cj","chatroomtest","ddd","ddd","ddd");
		session.insert("roomMapper.sendMessage",vo);
		session.commit();
		System.out.println("register product ok"+vo.getChatContent()+vo.getId());*/
	/*	String serial_no="0";
		String chat_no="5";
		HashMap params= new HashMap();
		 params.put("param1", serial_no);
		 params.put("param2", chat_no);
		List<RoomVO> list=session.selectList("roomMapper.getChatbyRoomNum",params);*/
	/*	MemberVO mvo = new MemberVO("eclipse01","111aa","james",3,"ghghg@naver.com","010-1234-5678");
		System.out.println(mvo);
		session.insert("memberMapper.signup", mvo);
		session.commit();*/
		String id="eclipse01";
		String profilePic="123231.jpg";
		HashMap params= new HashMap();
		 params.put("param1", profilePic);
		 params.put("param2", id);
		session.update("memberMapper.uploadImg", params);
		session.commit();
	}
}










