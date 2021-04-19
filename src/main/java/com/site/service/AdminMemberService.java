package com.site.service;

import java.util.Map;

import com.site.dto.Admin_memberDto;

public interface AdminMemberService {

	Map<String, Object> adminLoginCheck(String admin_id, String admin_pw);  //관리자 로그인
	Map<String, Object> boardMemberListAll(String page, String search);   //회원리스트 출력

	
	
	
	
}//interface
