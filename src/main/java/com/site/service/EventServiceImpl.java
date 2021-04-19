package com.site.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.site.dto.EventDto;
import com.site.mapper.EventMapper;


@Service
public class EventServiceImpl implements EventService {
	
	@Autowired
	EventMapper eventMapper;
	
	@Autowired
	Map<String,Object> map;
	EventDto eventDto;
	EventDto preDto;
	EventDto nextDto;
	
	
	@Override
	public Map<String, Object> eventListAll() {
		List<EventDto> list = new ArrayList<EventDto>();
		list = new ArrayList<EventDto>();
		
		list = eventMapper.selectEventBoardListAll();
		
		map.put("list",list);
		
		return map;
	}


	@Override
	public Map<String, Object> eventContent_view(String bid) {
		//조회수 1 증가
				//content 1개 가져오기
				eventDto = eventMapper.selectEventBoardContent_view(bid);
				//리스트 가져오는 메소드
			
					preDto = eventMapper.selectEventBoard_pre(bid);
					nextDto = eventMapper.selectEventBoard_next(bid);
				
				
				
				map.put("eventDto", eventDto);
				map.put("preDto", preDto);
				map.put("nextDto", nextDto);

				return map;
	}


	@Override
	public void event_boardWrite(EventDto eventdto, MultipartFile file) {
				//원본파일이름
				String fileName = file.getOriginalFilename();
				//확장자명 가져오기
				String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
				if(FilenameUtils.getExtension(fileName).toLowerCase() != "") {
					//파일 저장 위치
					String fileUrl = "C:/Users/User/git/new_wedding_suda/src/main/resources/static/upload/";
					//신규파일이름 ( 32자리이름생성.확장자명 )
					String uploadFileName = RandomStringUtils.randomAlphanumeric(20)+"."+fileNameExtension;
					File f = new File(fileUrl+uploadFileName);
					try {
						file.transferTo(f);
					} catch (Exception e) {
						e.printStackTrace();
					}
				    //파일이름저장
					eventDto.setFileName(uploadFileName);
			}else {
				eventDto.setFileName("");
			}
		    
		    //mapper전달
		    eventMapper.insertEventBoardWrite(eventDto);
	}


	@Override
	public Map<String, Object> boardModify_view(String bid) {
		eventDto = eventMapper.selectEventBoardContent_view(bid);
		map.put("eventDto", eventDto);
		return map;
	}


	@Override
	public void boardModify(EventDto eventDto, MultipartFile file) {
		String orgfileName = file.getOriginalFilename();
		System.out.println("impl : "+orgfileName);
		if(file.getSize() != 0) { //파일사이즈가 0이 아니면
			//파일 저장 위치
			String fileUrl = "C:/Users/User/git/lee/Ex0331_2/src/main/resources/static/upload/";
			//신규파일이름 ( 32자리이름생성.확장자명 )
			//이름에 시간추가
			long time = System.currentTimeMillis();
			String uploadFileName = String.format("%d_%s", time,orgfileName);
			File f = new File(fileUrl+uploadFileName);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
		    //파일이름저장
			eventDto.setFileName(uploadFileName);
		}else {
			// 기존 파일이름을 그대로 저장시키면 됨. 
			//afterDto.setFileName("");
		}
    
	    //mapper전달
	    eventMapper.updateBoardWrite(eventDto);
    
    return;
		
	}


	@Override
	public void boardDelete(String bid) {
		eventMapper.deleteBoard(bid);
		return;
	}

}
