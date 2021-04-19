package com.site.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.BuyboardDto;

@Mapper
public interface MyPageMapper {

	//list 개수 가져오기
	int listCount(String userid);
	
	//list 리스트 가져오기
	List<BuyboardDto> selectmyPointListAll(int startrow, int endrow, String userid);


}
