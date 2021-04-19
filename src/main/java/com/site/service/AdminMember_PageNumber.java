package com.site.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.mapper.Member_mapper;

@Service
public class AdminMember_PageNumber {

	
	@Autowired
	Member_mapper member_mapper;
	
	
	// 메소드
	// 하단 페이지 넘버링 정보 메소드
	public Map<String, Object> pageNumber(int page, int limit, String search) {

		Map<String, Object> map = new HashMap<String, Object>();
		int listCount = 0;

		// 메소드 호출
		// 전체 게시글 개수 확인
		if (search == null || search.equals("")) { // 검색어를 입력하지 않았을 떄
			listCount = member_mapper.listCount();

		} else if (search != null) { // 검색기능을 사용했을 때
			//listCount = member_mapper.listCountSearchAll(search);

		} // if

		// 최대 페이지 수
		int maxPage = (int) ((double) listCount / limit + 0.95);

		// 첫 페이지 번호
		int startPage = ((int) ((double) page / 10 + 0.9) - 1) * 10 + 1;

		// 마지막 페이지 번호
		int endPage = maxPage;
		// 단!!!
		// 마지막 페이지가 11이상일 경우
		if (endPage > startPage + 10 - 1) {
			endPage = startPage + 10 - 1;
		} // if

		map.put("page", page);
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("search", search);

		return map;
	}
	
	
}//class
