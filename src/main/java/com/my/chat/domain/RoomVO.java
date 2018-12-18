package com.my.chat.domain;

import org.springframework.web.multipart.MultipartFile;

import com.my.chat.domain.MemberVO;

public class RoomVO {
	private int serialNo;
	private int chatNo;
	private String id;
	private String chatContent;
	private String chatTime;
	private MemberVO memberVO;
	private String orgfilename;
	private String newfilename;
	private MultipartFile uploadFile;
	
	

	

	public int getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(int serialNo) {
		this.serialNo = serialNo;
	}

	public int getChatNo() {
		return chatNo;
	}

	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getChatContent() {
		return chatContent;
	}

	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}

	public String getChatTime() {
		return chatTime;
	}

	public void setChatTime(String chatTime) {
		this.chatTime = chatTime;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	public String getOrgfilename() {
		return orgfilename;
	}

	public void setOrgfilename(String orgfilename) {
		this.orgfilename = orgfilename;
	}

	public String getNewfilename() {
		return newfilename;
	}

	public void setNewfilename(String newfilename) {
		this.newfilename = newfilename;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}


	public RoomVO(int serialNo,int chatNo, String id, String chatContent, String chatTime, String orgfilename, String newfilename) {
		super();
		this.serialNo = serialNo;
		this.chatNo = chatNo;
		this.id = id;
		this.chatContent = chatContent;
		this.chatTime = chatTime;
		this.orgfilename = orgfilename;
		this.newfilename = newfilename;
	}

	public RoomVO() {}

	@Override
	public String toString() {
		return "RoomVO [serialNo=" + serialNo + "chatNo=" + chatNo + ", id=" + id + ", chatContent=" + chatContent + ", chatTime=" + chatTime
				+ ", orgfilename=" + orgfilename + ", newfilename=" + newfilename + "]";
	}




	
	
	
    
}
