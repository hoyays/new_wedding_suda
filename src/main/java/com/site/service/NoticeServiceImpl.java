package com.site.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.site.dto.NoticeDto;
import com.site.mapper.NoticeMapper;

@Service
public class NoticeServiceImpl implements NoticeService {

	
	@Autowired
	NoticeMapper noticeMapper;
	@Autowired
	NoticePageNumber pageNumber;
	Map<String,Object> map;
	List<NoticeDto> list;
	NoticeDto noticeDto;
	NoticeDto preDto;
	NoticeDto nextDto;

	@Override
	public Map<String,Object> noticeListAll(String listPage,String category,String search) {
		//Map map = new HashMap<String, Object>();
		list = new ArrayList<NoticeDto>();
		int page=1;  //첫페이지 초기화
		int limit=10; //한페이지에 나오는 게시글수 : 10
		//page데이터가 있으면 데이터값 적용
		if(listPage !=null && listPage !="" ) {
			page = Integer.parseInt(listPage);
		}
		int startrow = (page-1)*limit+1; // 시작 게시글번호 1,11,21...
		int endrow = startrow+limit-1; // 마지막 게시글번호 10,20,30...
		
		//리스트 가져오는 메소드
		if(category==null || category.equals("")) {
			list = noticeMapper.selectNoticeBoardListAll(startrow,endrow);
		}else if(category.equals("title")) {  // opt:title search:제목
			list = noticeMapper.selectNoticeBoardListTitle(startrow,endrow,search);
		}else if(category.equals("content")) {
			list = noticeMapper.selectNoticeBoardListContent(startrow,endrow,search);
		}else if(category.equals("all")) {
			list = noticeMapper.selectNoticeBoardListSearchAll(startrow,endrow,search);
		}
		
		//페이지 넘버링 메소드
		map = pageNumber.pageNumber(page, limit,category,search);
		map.put("list", list);
		
		return map;
	}
	

	@Override
	public Map<String, Object> noticeContent_view(String bid, String page, String category, String search) {
		//조회수 1 증가
		noticeMapper.selectUpHit(bid);
		//content 1개 가져오기
		noticeDto = noticeMapper.selectNoticeBoardContent_view(bid);
		//리스트 가져오는 메소드
		if(category==null || category.equals("")) {
			//이전글 다음글을 가지고 옴
			preDto = noticeMapper.selectNoticeBoard_pre(bid);
			nextDto = noticeMapper.selectNoticeBoard_next(bid);
		}else if(category.equals("title")) {  // opt:title search:제목
			preDto = noticeMapper.selectNoticeBoard_preTitle(bid,search);
			nextDto = noticeMapper.selectNoticeBoard_nextTitle(bid,search);
		}else if(category.equals("content")) {
			preDto = noticeMapper.selectNoticeBoard_preContent(bid,search);
			nextDto = noticeMapper.selectNoticeBoard_nextContent(bid,search);
		}else if(category.equals("all")) {
			preDto = noticeMapper.selectNoticeBoard_preAll(bid,search);
			nextDto = noticeMapper.selectNoticeBoard_nextAll(bid,search);
		}
		
		
		map.put("noticeDto", noticeDto);
		map.put("preDto", preDto);
		map.put("nextDto", nextDto);
		map.put("category", category);
		map.put("search", search);
		map.put("page", page);

		return map;
	}

	@Override
	public void notice_boardWrite(NoticeDto noticeDto, @RequestPart MultipartFile file) {
		
			//원본파일이름
			String fileName = file.getOriginalFilename();
			//확장자명 가져오기
			String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
			if(FilenameUtils.getExtension(fileName).toLowerCase() != "") {
				//파일 저장 위치
				String fileUrl = "C:/Users/User/git/lee/Ex0331_2/src/main/resources/static/upload/";
				//신규파일이름 ( 32자리이름생성.확장자명 )
				String uploadFileName = RandomStringUtils.randomAlphanumeric(20)+"."+fileNameExtension;
				File f = new File(fileUrl+uploadFileName);
				try {
					file.transferTo(f);
				} catch (Exception e) {
					e.printStackTrace();
				}
			    //파일이름저장
				noticeDto.setFileName(uploadFileName);
		}else {
			noticeDto.setFileName("");
		}
	    
	    //mapper전달
	    noticeMapper.insertNoticeBoardWrite(noticeDto);
	    
		return;
	}


	@Override
	public Map<String, Object> boardModify_view(String bid, String page, String category, String search) {
		//content 1개 가져오기
		noticeDto = noticeMapper.selectNoticeBoardContent_view(bid);
		map.put("noticeDto", noticeDto);
		map.put("category", category);
		map.put("search", search);
		map.put("page", page);
		
		return map;
	}


	@Override
	public void boardModify(NoticeDto noticeDto, MultipartFile file) {
		//원본파일이름
		String orgfileName = file.getOriginalFilename();
		System.out.println("impl : "+orgfileName);
		if(file.getSize() != 0) { //파일사이즈가 0이 아니면
			//파일 저장 위치
			String fileUrl = "C:/GitSave/jspClass/Ex0331/src/main/resources/static/upload/";
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
			noticeDto.setFileName(uploadFileName);
		}else {
			// 기존 파일이름을 그대로 저장시키면 됨. 
			//noticeDto.setFileName("");
		}
    
	    //mapper전달
	    noticeMapper.updateBoardWrite(noticeDto);
    
    return;
		
	}


	@Override
	public void boardReply(NoticeDto noticeDto, MultipartFile file) {
		//원본파일이름
		String orgfileName = file.getOriginalFilename();
		System.out.println("impl : "+orgfileName);
		if(file.getSize() != 0) { //파일사이즈가 0이 아니면
			//파일 저장 위치
			String fileUrl = "C:/GitSave/jspClass/Ex0331/src/main/resources/static/upload/";
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
			noticeDto.setFileName(uploadFileName);
		}else {
			// 기존 파일이름을 그대로 저장시키면 됨. 
			noticeDto.setFileName("");
		}
    
	    //mapper전달
	    noticeMapper.insertBoardReply(noticeDto);
	    noticeMapper.insertBoardReplyPlus(noticeDto);
	    return;
		
	}

	@Override
	public void boardDelete(String bid) {
		noticeMapper.deleteBoardDelete(bid);
		
	}


	@Override
	public void boardWrite(NoticeDto noticeDto, MultipartFile file) {
		// TODO Auto-generated method stub
		
	}

}
