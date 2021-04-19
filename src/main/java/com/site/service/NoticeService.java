package com.site.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.site.dto.NoticeDto;


public interface NoticeService {

	Map<String, Object> noticeListAll(String page, String category, String search);
	
	Map<String, Object> noticeContent_view(String bid, String page, String category, String search);

	void notice_boardWrite(NoticeDto noticeDto, MultipartFile file);
	
	void boardWrite(NoticeDto noticeDto, MultipartFile file);

	Map<String, Object> boardModify_view(String bid, String page, String category, String search);

	void boardModify(NoticeDto noticeDto, MultipartFile file);

	void boardReply(NoticeDto noticeDto, MultipartFile file);

	void boardDelete(String bid);
}
