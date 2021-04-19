package com.site.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.dto.DresscompanyInfoDto;
import com.site.dto.HMcompanyInfoDto;
import com.site.dto.StudiocompanyInfoDto;
import com.site.dto.TravelcompanyInfoDto;
import com.site.dto.questionBoardDto;
import com.site.mapper.Admin_mapper_haeun;

@Service
public class AdminMemberService_impl_haeun implements AdminMemberService_haeun {
	
	@Autowired
	Admin_mapper_haeun admin_mapper;
	Map<String, Object> map = new HashMap<String, Object>();
	List<StudiocompanyInfoDto> s_list;
	List<DresscompanyInfoDto> d_list;
	List<HMcompanyInfoDto> hm_list;
	List<TravelcompanyInfoDto> t_list;
	List<questionBoardDto> q_list;

	@Override
	public Map<String, Object> infoStudioList() {
		
		 s_list = admin_mapper.selectStudioList();
		 
		 map.put("s_list", s_list);
		
		return map;
	}

	@Override
	public Map<String, Object> infoDressList() {
		
		d_list = admin_mapper.selectDressList();
		
		map.put("d_list", d_list);
		return map;
	}

	@Override
	public Map<String, Object> infoHmList() {
		
		hm_list = admin_mapper.selectHmList();
		
		 map.put("hm_list", hm_list);
		return map;
	}

	@Override
	public Map<String, Object> infoTravelList() {
		
		t_list = admin_mapper.selectTravelList();
		
		map.put("t_list", t_list);
		return map;
	}

	@Override
	public Map<String, Object> infoQuestionList() {
		
		q_list = admin_mapper.selectQuestionList();
		
		map.put("q_list", q_list);
		
		return map;
	}
	

	

	
	
	
	
	
}//class
