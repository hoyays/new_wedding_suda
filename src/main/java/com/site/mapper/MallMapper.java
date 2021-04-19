package com.site.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.BuyboardDto;
import com.site.dto.MallDto;
import com.site.dto.MemberDto;

@Mapper
public interface MallMapper {

	List<MallDto> selectMallBoardList();

	MallDto selectMall_view(int bid);

	MemberDto selectMall_userid(String userid);

	void spentPoint(String userid, int point);

	void insertAfterBoardWrite(MallDto mallDto);

	void insertBuy(BuyboardDto buyboardDto);

	int getPoint(String userid);
	
	

}
