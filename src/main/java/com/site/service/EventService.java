package com.site.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.site.dto.EventDto;

public interface EventService {

	Map<String, Object> eventListAll();

	Map<String, Object> eventContent_view(String bid);

	void event_boardWrite(EventDto eventdto, MultipartFile file);

	Map<String, Object> boardModify_view(String bid);

	void boardModify(EventDto eventDto, MultipartFile file);

	void boardDelete(String bid);

}
