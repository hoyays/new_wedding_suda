package com.site.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.CounselingDto;

@Mapper
public interface CounselingMapper {

	void insertCounselingRequest(CounselingDto counselingDto);

}
