package com.site.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.MemberDto;

@Mapper
public interface Member_mapper {

	int insertMemberJoin(MemberDto memberDto);   //회원가입
	MemberDto selectMemberLogin(String userid, String pwd);   //로그인 체크
	int selectUseridDoubleCheck(String userid);   //아이디 중복검사
	MemberDto selectUseridModify_view(MemberDto memberDto);   //회원정보수정 - 비밀번호 확인
	int updateMemberModify(MemberDto memberDto);   //회원정보수정
	int listCount();  //검색기능 없음 - 총 회원가입 건수 확인(관리자 페이지용)
	List<MemberDto> selectMemberListAll(int startRow, int endRow);   //회원가입 리스트 출력(관리자 페이지용)
	MemberDto checkIdPw(MemberDto memberdto);
	void pwUpdate(String userid, int randomPw);

	
	
	
}//interface
