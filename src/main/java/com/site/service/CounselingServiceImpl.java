package com.site.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.dto.CounselingDto;
import com.site.mapper.CounselingMapper;

@Service
public class CounselingServiceImpl implements CounselingService {

	@Autowired
	CounselingMapper counselingMapper;
	
	Map<String, Object> map;
	List<CounselingDto> list;
	CounselingDto counselingDto;
	
	
	@Override
	public void counselingRequest(CounselingDto counselingDto) {
		counselingMapper.insertCounselingRequest(counselingDto);
		return;
	}

}
