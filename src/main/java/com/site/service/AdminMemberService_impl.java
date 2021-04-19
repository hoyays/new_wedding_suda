package com.site.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.dto.Admin_memberDto;
import com.site.dto.MemberDto;
import com.site.dto.inquiry_boardDto;
import com.site.mapper.Admin_mapper;
import com.site.mapper.Member_mapper;

@Service
public class AdminMemberService_impl implements AdminMemberService {
	
	@Autowired
	Admin_mapper admin_mapper;
	@Autowired
	Member_mapper member_mapper;
	@Autowired
	AdminMember_PageNumber pageNumber;
	
	//변수선언
	List<MemberDto> list;
	Map<String, Object> map;
	
	@Override
	public Map<String, Object> adminLoginCheck(String admin_id, String admin_pw) {
		
		Admin_memberDto dto = admin_mapper.selectAdminLogin(admin_id, admin_pw);
		
		
		int loginCheck = -1;
		String message = "아이디와 패스워드가 일치하지 않습니다.";
		if(dto != null) {
			loginCheck = 1; 
			message = "정상적으로 로그인 되었습니다.";
		}
		
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dto", dto);
		map.put("loginCheck", loginCheck);
		map.put("message", message);
		
		return map;
	}

	@Override
	public Map<String, Object> boardMemberListAll(String listPage, String search) {
		
		int page = 1;    //첫 페이지 초기화
		int limit = 15;  //1개 페이지에 노출되는 게시글 수(15개씩)
		
		// page 데이터가 있으면 데이터 적용
		if (listPage != null && listPage != "") {
			page = Integer.parseInt(listPage);
		}
		
		
		int startRow = (page-1)*limit+1;   //선택한 페이지의 첫번째 줄 => 1, 16, 31...
		int endRow = startRow+limit-1;   //선택한 페이지의 마지막 줄 => 15, 30, 45 ...
		
		
		//검색기능
		//검색기능 추가해야함(지금은 검색어 입력하지 않았을 때)
		if(search == null || search.equals("")) {   //검색어를 입력하지 않았을 떄
			list = member_mapper.selectMemberListAll(startRow, endRow);
			
		}else if(search != null) {   //검색기능을 사용했을 때
			//list = member_mapper.selectMemberSearchList(startRow, endRow, search);
			
		}//if
		
		
		//user가 클릭한 튜플의 개수를 확인한다.(inquiry_main 헤더 새글 알림용)
//		int clickCount = inquiry_mapper.selectBoardClickCount();
		
		
		//메소드 호출 - 페이지 넘버링 계산
		map = pageNumber.pageNumber(page, limit, search);
		
		
		//map에 답기
//		map.put("clickCount", clickCount);
		map.put("list", list);
		
		
		return map;
	}

	

	
	
	
	
	
}//class
