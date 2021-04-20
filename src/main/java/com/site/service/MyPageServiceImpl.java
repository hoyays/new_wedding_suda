package com.site.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.dto.BuyboardDto;
import com.site.mapper.MyPageMapper;

@Service
public class MyPageServiceImpl implements MyPageService {

	@Autowired
	MyPageMapper myPageMapper;
	

	@Autowired
	MyPointPageNumber myPointPageNumber;
	Map<String,Object> map;
	List<BuyboardDto> list;
	
	
	@Override
	public Map<String, Object> myPointListAll(String listPage, String userid) {
		
		list = new ArrayList<BuyboardDto>();
		int page=1;  //첫페이지 초기화
		int limit=10; //한페이지에 나오는 게시글수 : 10
		
		if(listPage !=null && listPage !="" ) {
			page = Integer.parseInt(listPage);
		}
		int startrow = (page-1)*limit+1; // 시작 게시글번호 1,11,21...
		int endrow = startrow+limit-1; // 마지막 게시글번호 10,20,30...
		
		list = myPageMapper.selectmyPointListAll(startrow,endrow,userid);
		
		map = myPointPageNumber.myPointPageNumber(page, limit,userid);
		map.put("list", list);
		
		return map;
	}

}
