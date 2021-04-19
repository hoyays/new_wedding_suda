package com.site.service;

import java.util.Map;

import com.site.dto.MemberDto;

public interface MemberService {

	int memberJoin(MemberDto memberDto);   //회원가입
	Map<String, Object> memberLogin(String userid, String pwd);   //로그인
	int memberUseridDoubleCheck(String userid);  //아이디 중복검사
	MemberDto useridModify_view(MemberDto memberDto);   //회원정보수정 - 비밀번호 확인
	int memberModify(MemberDto memberDto);  //회원정보 수정
	String emailCheck(String emailAdr);

}
