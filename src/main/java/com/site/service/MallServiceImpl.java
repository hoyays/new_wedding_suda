package com.site.service;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.site.dto.BuyboardDto;
import com.site.dto.MallDto;
import com.site.dto.MemberDto;
import com.site.mapper.MallMapper;

@Service
public class MallServiceImpl implements MallService {

	@Autowired
	MallMapper mallMapper;
	
	@Autowired
	Map<String,Object> map;
	List<MallDto> list;
	MallDto mallDto;
	MemberDto memberDto;
	   
	@Autowired
	private JavaMailSender send;

	
	
	
	@Override
	public Map<String, Object> mallListAll() {
			list=mallMapper.selectMallBoardList();
			map.put("list", list);
		return map;
	}



	@Override
	public Map<String, Object> mall_view(int bid, String userid) {
		mallDto =mallMapper.selectMall_view(bid);
		memberDto = mallMapper.selectMall_userid(userid);
		map.put("mallDto", mallDto);
		map.put("memberDto", memberDto);
		return map;
	}



	@Override
	public int mall_userid(String userid, int point) {
		mallMapper.spentPoint(userid,point);
		int getpoint=mallMapper.getPoint(userid);
		System.out.println("임팔 포인트 반환값 : "+getpoint);
		return getpoint;
	}



	@Override
	public void mall_emailSend(String email,int point) {
		String randomNum = "false";
	    System.out.println("impl:"+email);
	    try {
	    	int i = ((int)(Math.random()*30000)+20000); // 20000 ~ 50000까지 랜덤숫자 발송
	    	MimeMessage msg = send.createMimeMessage();
	    	MimeMessageHelper helper = new MimeMessageHelper(msg, true, "UTF-8");
	       randomNum = Integer.toString(i);
	       helper.setTo(email);
	       helper.setSubject("웨딩 수다 문화상품권 입니다.");
	       helper.setText("샤넬가방"+point+"원 쿠폰 교환번호는 <h1>"+randomNum+"</h1> 입니다",true);
	       msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email));
	       send.send(msg);
	    }catch(Exception e) {
	       randomNum = "false";
	    }
		
	}



	@Override
	public void mall_write(MallDto mallDto,@RequestPart MultipartFile file) {
		//원본파일이름
		String fileName = file.getOriginalFilename();
		//확장자명 가져오기
		String fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
		if(FilenameUtils.getExtension(fileName).toLowerCase() != "") {
			//파일 저장 위치
			String fileUrl = "C:/Users/User/git/new_wedding_suda/src/main/resources/static/upload/";
			//신규파일이름 ( 20자리이름생성.확장자명 )
			String uploadFileName = RandomStringUtils.randomAlphanumeric(20)+"."+fileNameExtension;
			File f = new File(fileUrl+uploadFileName);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
		    //파일이름저장
			mallDto.setFileName(uploadFileName);
	}else {
		mallDto.setFileName("");
	}
    
    //mapper전달
    mallMapper.insertAfterBoardWrite(mallDto);
    
	return;
}



	@Override
	public void mall_buy_board(BuyboardDto buyboardDto) {
		mallMapper.insertBuy(buyboardDto);
		
	}



	
	
}
