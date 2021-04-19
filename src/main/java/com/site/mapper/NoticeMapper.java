package com.site.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.NoticeDto;

@Mapper
public interface NoticeMapper {

	//list 리스트 가져오기
	List<NoticeDto> selectNoticeBoardListAll(int startrow, int endrow);
	List<NoticeDto> selectNoticeBoardListTitle(int startrow, int endrow, String search);

	//list 개수 가져오기
	int listCount();
	int listCountTitle(String search);
	List<NoticeDto> selectNoticeBoardListContent(int startrow, int endrow, String search);
	int listCountContent(String search);
	List<NoticeDto> selectNoticeBoardListSearchAll(int startrow, int endrow, String search);
	int listCountSearchAll(String search);
	
	//content_view
	NoticeDto selectNoticeBoardContent_view(String bid);
	void selectUpHit(String bid);
	NoticeDto selectNoticeBoard_pre(String bid);
	NoticeDto selectNoticeBoard_next(String bid);
	NoticeDto selectNoticeBoard_preTitle(String bid, String search);
	NoticeDto selectNoticeBoard_nextTitle(String bid, String search);
	NoticeDto selectNoticeBoard_preContent(String bid, String search);
	NoticeDto selectNoticeBoard_nextContent(String bid, String search);
	NoticeDto selectNoticeBoard_preAll(String bid, String search);
	NoticeDto selectNoticeBoard_nextAll(String bid, String search);
	
	//write
	void insertNoticeBoardWrite(NoticeDto noticeDto);
	
	
	//update
	void updateBoardWrite(NoticeDto noticeDto);
	
	//reply
	void insertBoardReply(NoticeDto noticeDto);
	void insertBoardReplyPlus(NoticeDto noticeDto);
	void deleteBoardDelete(String bid);
}
