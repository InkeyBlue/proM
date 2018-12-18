package com.my.chat.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.my.chat.domain.RoomVO;
import com.my.chat.service.RoomService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class RoomController {
	@Resource
	private RoomService roomService;
	
	@RequestMapping("chatSumbit.do")
	public ModelAndView sendMessage(HttpSession session,RoomVO rvo) throws Exception{
		/*MemberVO mvo = (MemberVO)session.getAttribute("mvo");*/
		/*MemberVO mvo = new MemberVO("cj2","111","철진","ㅇㄹㅇㅇㄹ");
		rvo.setMemberVO(mvo);*/
		roomService.sendMessage(rvo);
		System.out.println(rvo);
		return new ModelAndView("redirect:/index.jsp");
	}
	
	@RequestMapping("getChatbyRoomNum.do")
	public ModelAndView getChatbyRoomNum(String serialNo,String chatNo,HttpServletRequest request,HttpServletResponse response) throws Exception{
		/*ArrayList list= (ArrayList) roomService.getChatbyRoomNum(serialNo);	
		request.setAttribute("list",list);*/
		/*ModelAndView mav=new ModelAndView();
		String str=getChatbyDate(serialNo);
		System.out.println(str);
		mav.addObject("str", str);
		new ModelAndView("JsonView")
		mav.setViewName("redirect:/index.jsp");*/
		//System.out.println(list);
		//System.out.println(serialNo);
		//response.getWriter().write(getChatbyDate(serialNo));
		System.out.println(getChatbyDate(serialNo,chatNo));
		return new ModelAndView("jsonView","json",getChatbyDate(serialNo,chatNo));
		
	}

	   public JSONObject getChatbyDate(String serialNo,String chatNo) {
		   JSONObject jsonObject = new JSONObject();
	       StringBuffer result = new StringBuffer("");
	       JSONArray jsonArray = new JSONArray();
	       JSONObject wrapObject = new JSONObject();
	       
	        // SimpleDateFormat (현재 날짜를 나타내는 format)
	       List<RoomVO> chatList = roomService.getChatbyRoomNum(serialNo,chatNo);
	       result.append("{\"result\":[");
	        // 결과가 있을 때 즉 오늘에 시작한 메시지를 모두 담아와서 보내줌
	       for (int i = 0; i < chatList.size(); i++) {
	    	   wrapObject.put("id" ,chatList.get(i).getId());
	           wrapObject.put("chatContent" ,chatList.get(i).getChatContent());
	           wrapObject.put("chatTime" ,chatList.get(i).getChatTime());
	           wrapObject.put("chatNo", chatList.get(i).getChatNo());
	           jsonArray.add(wrapObject);
	        }
	       
	       jsonObject.put("result", jsonArray);
	       
	        //result.append("],\"last\":\"" + chatList.get(chatList.size() - 1).getChatTime() + "\"}");
	      /*  for (int i = 0; i < chatList.size(); i++) {
	            result.append("[{\"id\":\"" + chatList.get(i).getId() + "\"},");
	            result.append("{\"chatContent\":\"" + chatList.get(i).getChatContent() + "\"},");
	            result.append("{\"chatTime\":\"" + chatList.get(i).getChatTime() + "\"}]");
	            // i 가 마지막원소가 아니라면 뒤에 더 있다는 의미
	            if (i != chatList.size() - 1)
	                result.append(",");
	        }
	        result.append("],\"last\":\"" + chatList.get(chatList.size() - 1).getChatTime() + "\"}");*/
	        
	        return jsonObject;
	    }
}
