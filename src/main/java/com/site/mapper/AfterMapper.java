package com.site.mapper;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.site.dto.AfterDto;
import com.site.dto.CommentDto;

@Mapper
public interface AfterMapper {

	//list 리스트 가져오기
	List<AfterDto> selectAfterBoardListAll(int startrow, int endrow);
	List<AfterDto> selectAfterBoardListTitle(int startrow, int endrow, String search);

	//list 개수 가져오기
	int listCount();
	int listCountTitle(String search);
	List<AfterDto> selectAfterBoardListContent(int startrow, int endrow, String search);
	int listCountContent(String search);
	List<AfterDto> selectAfterBoardListSearchAll(int startrow, int endrow, String search);
	int listCountSearchAll(String search);
	
	//content_view
	AfterDto selectAfterBoardContent_view(String bid);
	void selectUpHit(String bid);
	AfterDto selectAfterBoard_pre(String bid);
	AfterDto selectAfterBoard_next(String bid);
	AfterDto selectAfterBoard_preTitle(String bid, String search);
	AfterDto selectAfterBoard_nextTitle(String bid, String search);
	AfterDto selectAfterBoard_preContent(String bid, String search);
	AfterDto selectAfterBoard_nextContent(String bid, String search);
	AfterDto selectAfterBoard_preAll(String bid, String search);
	AfterDto selectAfterBoard_nextAll(String bid, String search);
	
	//write
	void insertAfterBoardWrite(AfterDto afterDto);
	
	
	//update
	void updateBoardWrite(AfterDto afterDto);
	
	//reply
	void insertBoardReply(AfterDto afterDto);
	void insertBoardReplyPlus(AfterDto afterDto);
	void deleteBoardDelete(String bid);
	
	
	int insertCommentWrite(CommentDto commentDto);
	
	CommentDto selectCommentWrite(int commentNo);

	ArrayList<CommentDto> selectEvent_CommentList(String bid);

	int selectEvent_CommentCount(String bid);

	void updateCommentUpdate(CommentDto commentDto);

	void deleteComment(int commentNo);
}
