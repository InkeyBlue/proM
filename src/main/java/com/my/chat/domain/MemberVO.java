package com.my.chat.domain;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	private String id;
	private String password;
	private String name;
	private int age;
	private String email;
	private String phoneNumber;
	private String address;
	private String auth;
	private String company;
	private String dept;
	private String rank;
	private String content;
	private String profilePic;
	private MultipartFile uploadFile;
	
	
	//MyBatis를 생각하면 기본 생성자 반드시 필요
	public MemberVO(String id, String password, String name, int age, String email, String phoneNumber) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.email = email;
		this.phoneNumber = phoneNumber;
	}
	
	
	
	public MemberVO(String id, String password, String name, int age, String email, String phoneNumber, String address,
			String company, String dept, String rank) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.company = company;
		this.dept = dept;
		this.rank = rank;
	}



	public MemberVO(String id, String password, String name, int age, String email, String phoneNumber, String address,
			String auth, String company, String dept, String rank, String content, String profilePic) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.age = age;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.auth = auth;
		this.company = company;
		this.dept = dept;
		this.rank = rank;
		this.content = content;
		this.profilePic = profilePic;
	}



	public MemberVO() {}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getProfilePic() {
		return profilePic;
	}
	public void setProfilePic(String profilePic) {
		this.profilePic = profilePic;
	}
	
	
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}



	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}



	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", password=" + password + ", name=" + name + ", age=" + age + ", email=" + email
				+ ", phoneNumber=" + phoneNumber + ", address=" + address + ", auth=" + auth + ", company=" + company
				+ ", dept=" + dept + ", rank=" + rank + ", content=" + content + ", profilePic=" + profilePic + "]";
	}
	

	
	
}
