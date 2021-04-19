package com.site.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.site.dto.AfterDto;
import com.site.dto.CommentDto;


public interface AfterService {

	Map<String, Object> afterListAll(String page, String category, String search);
	
	Map<String, Object> afterContent_view(String bid, String page, String category, String search);

	void after_boardWrite(AfterDto afterDto, MultipartFile file);
	
	Map<String, Object> boardModify_view(String bid, String page, String category, String search);

	void boardModify(AfterDto afterDto, MultipartFile file);

	void boardReply(AfterDto afterDto, MultipartFile file);

	void boardDelete(String bid);
	
	CommentDto commentWrite_check(CommentDto commentDto);

	List<CommentDto> event_CommentList(String bid);

	int event_CommentCount(String bid);

	CommentDto commentUpdate_check(CommentDto commentDto);

	void commentDelete(int commentNo);
}
