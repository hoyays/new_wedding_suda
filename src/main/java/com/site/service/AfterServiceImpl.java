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

import com.site.dto.AfterDto;
import com.site.dto.CommentDto;
import com.site.mapper.AfterMapper;

@Service
public class AfterServiceImpl implements AfterService {

	
	@Autowired
	AfterMapper afterMapper;
	@Autowired
	AfterPageNumber afterpageNumber;
	Map<String,Object> map;
	List<AfterDto> list;
	List<CommentDto> list2;
	AfterDto afterDto;
	AfterDto preDto;
	AfterDto nextDto;

	@Override
	public Map<String,Object> afterListAll(String listPage,String category,String search) {
		//Map map = new HashMap<String, Object>();
		list = new ArrayList<AfterDto>();
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
			list = afterMapper.selectAfterBoardListAll(startrow,endrow);
		}else if(category.equals("title")) {  // opt:title search:제목
			list = afterMapper.selectAfterBoardListTitle(startrow,endrow,search);
		}else if(category.equals("content")) {
			list = afterMapper.selectAfterBoardListContent(startrow,endrow,search);
		}else if(category.equals("all")) {
			list = afterMapper.selectAfterBoardListSearchAll(startrow,endrow,search);
		}
		
		//페이지 넘버링 메소드
		map = afterpageNumber.afterPageNumber(page, limit,category,search);
		map.put("list", list);
		
		return map;
	}
	

	@Override
	public Map<String, Object> afterContent_view(String bid, String page, String category, String search) {
		//조회수 1 증가
		afterMapper.selectUpHit(bid);
		//content 1개 가져오기
		afterDto = afterMapper.selectAfterBoardContent_view(bid);
		//리스트 가져오는 메소드
		if(category==null || category.equals("")) {
			//이전글 다음글을 가지고 옴
			preDto = afterMapper.selectAfterBoard_pre(bid);
			nextDto = afterMapper.selectAfterBoard_next(bid);
		}else if(category.equals("title")) {  // opt:title search:제목
			preDto = afterMapper.selectAfterBoard_preTitle(bid,search);
			nextDto = afterMapper.selectAfterBoard_nextTitle(bid,search);
		}else if(category.equals("content")) {
			preDto = afterMapper.selectAfterBoard_preContent(bid,search);
			nextDto = afterMapper.selectAfterBoard_nextContent(bid,search);
		}else if(category.equals("all")) {
			preDto = afterMapper.selectAfterBoard_preAll(bid,search);
			nextDto = afterMapper.selectAfterBoard_nextAll(bid,search);
		}
		
		
		map.put("afterDto", afterDto);
		map.put("preDto", preDto);
		map.put("nextDto", nextDto);
		map.put("category", category);
		map.put("search", search);
		map.put("page", page);

		return map;
	}

	@Override
	public void after_boardWrite(AfterDto afterDto, @RequestPart MultipartFile file) {
		
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
				afterDto.setFileName(uploadFileName);
		}else {
			afterDto.setFileName("");
		}
	    
	    //mapper전달
	    afterMapper.insertAfterBoardWrite(afterDto);
	    
		return;
	}


	@Override
	public Map<String, Object> boardModify_view(String bid, String page, String category, String search) {
		//content 1개 가져오기
		afterDto = afterMapper.selectAfterBoardContent_view(bid);
		map.put("afterDto", afterDto);
		map.put("category", category);
		map.put("search", search);
		map.put("page", page);
		
		return map;
	}


	@Override
	public void boardModify(AfterDto afterDto, MultipartFile file) {
		//원본파일이름
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
			afterDto.setFileName(uploadFileName);
		}else {
			// 기존 파일이름을 그대로 저장시키면 됨. 
			//afterDto.setFileName("");
		}
    
	    //mapper전달
	    afterMapper.updateBoardWrite(afterDto);
    
    return;
		
	}


	@Override
	public void boardReply(AfterDto afterDto, MultipartFile file) {
		//원본파일이름
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
			afterDto.setFileName(uploadFileName);
		}else {
			// 기존 파일이름을 그대로 저장시키면 됨. 
			afterDto.setFileName("");
		}
    
	    //mapper전달
	    afterMapper.insertBoardReply(afterDto);
	    afterMapper.insertBoardReplyPlus(afterDto);
	    return;
		
	}

	@Override
	public void boardDelete(String bid) {
		afterMapper.deleteBoardDelete(bid);
		
	}

	
	@Override
	public CommentDto commentWrite_check(CommentDto commentDto) {
		
		// 댓글 insert
		afterMapper.insertCommentWrite(commentDto);
		// keyProperty="commentNo" -> commentDto.getCommentNo 로 읽을수 있음
		int commentNo = commentDto.getCommentNo();
		System.out.println("commentDto.getCommentNo() : " + commentDto.getCommentNo());
		
		// 저장된 insert -> select 해서 가져옴
		CommentDto dto = afterMapper.selectCommentWrite(commentNo);
		System.out.println("dto : " + dto.getCommentDate());
		return dto;
	}

	@Override
	public List<CommentDto> event_CommentList(String bid) {
		list2 = afterMapper.selectEvent_CommentList(bid);
		System.out.println("getCommentNo() impl : "+list2.get(0).getCommentNo());
		return list2;
	}

	@Override
	public int event_CommentCount(String bid) {
		int count = afterMapper.selectEvent_CommentCount(bid);
		System.out.println("impl : "+count);
		return count;
	}

	@Override
	public CommentDto commentUpdate_check(CommentDto commentDto) {
		// 댓글 insert
		afterMapper.updateCommentUpdate(commentDto);
		int commentNo = commentDto.getCommentNo();
		// 저장된 insert -> select 해서 가져옴
		CommentDto dto = afterMapper.selectCommentWrite(commentNo);
		System.out.println("dto : " + dto.getCommentDate());
		
		return dto;
		
	}

	@Override
	public void commentDelete(int commentNo) {
		// 댓글 insert
		afterMapper.deleteComment(commentNo);
		return;
	}


}
