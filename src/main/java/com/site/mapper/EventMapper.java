package com.site.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.EventDto;

@Mapper
public interface EventMapper {

	List<EventDto> selectEventBoardListAll();

	EventDto selectEventBoardContent_view(String bid);

	EventDto selectEventBoard_pre(String bid);

	EventDto selectEventBoard_next(String bid);

	void insertEventBoardWrite(EventDto eventDto);

	void updateBoardWrite(EventDto eventDto);

	void deleteBoard(String bid);

}
