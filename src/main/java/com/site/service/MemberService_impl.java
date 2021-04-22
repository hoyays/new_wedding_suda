package com.site.service;

import java.util.HashMap;
import java.util.Map;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.site.dto.MemberDto;
import com.site.mapper.Member_mapper;

@Service
public class MemberService_impl implements MemberService {
	
	@Autowired
	Member_mapper member_mapper;
	
	@Autowired
	   private JavaMailSender send;

	@Override
	public int memberJoin(MemberDto memberDto) {
		
		int check = member_mapper.insertMemberJoin(memberDto);
		
		return check;

	}

	@Override
	public Map<String, Object> memberLogin(String userid, String pwd) {
		
		System.out.println("userid : "+userid);
		System.out.println("pwd : "+pwd);
		
		Map<String, Object> map = new HashMap<String, Object>();
		MemberDto memberDto = member_mapper.selectMemberLogin(userid,pwd);
		
		int loginCheck = -1;
		String message = "아이디와 패스워드가 일치하지 않습니다.";
		
		if(memberDto != null) {
			loginCheck = 1; 
		}
		
		System.out.println("memberDto : "+memberDto);
		 
		map.put("memberDto", memberDto);
		map.put("loginCheck", loginCheck);
		map.put("message", message);
		
		return map;
	}

	@Override
	public int memberUseridDoubleCheck(String userid) {
		
		int result = member_mapper.selectUseridDoubleCheck(userid);
		
		return result;
	}

	@Override
	public MemberDto useridModify_view(MemberDto memberDto) {
		
		MemberDto resultDto = member_mapper.selectUseridModify_view(memberDto);
		
		return resultDto;
	}

	@Override
	public int memberModify(MemberDto memberDto) {
		
		int check = member_mapper.updateMemberModify(memberDto);
		
		return check;
	}
	
	 @Override
     public String emailCheck(String email) {
        String randomNum = "false";
        MimeMessage msg = send.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(msg);
        try {
           int i = ((int)(Math.random()*30000)+20000); // 20000 ~ 50000까지 랜덤숫자 발송
           randomNum = Integer.toString(i);
           helper.setTo(email);
           helper.setSubject("웨딩 수다입니다");
           helper.setText("인증번호는 <h1>"+randomNum+"</h1> 입니다",true);
           msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(email));
           send.send(msg);
        }catch(Exception e) {
           randomNum = "false";
        }
        
        return randomNum;
     }

	@Override
	public int idPwCheck(MemberDto memberdto) {
		MemberDto resultDto= member_mapper.checkIdPw(memberdto);
		String userid =resultDto.getUserid();
		int checkId=-1;
		if(resultDto!=null ) {
			int randomPw = ((int)(Math.random()*30000)+20000); // 20000 ~ 50000까지 랜덤숫자 발송
			checkId=1;
			member_mapper.pwUpdate(userid,randomPw);
			
			MimeMessage msg = send.createMimeMessage(); MimeMessageHelper helper = new
			MimeMessageHelper(msg); try { helper.setTo(resultDto.getEmail());
			helper.setSubject("웨딩 수다입니다");
			helper.setText("아이디는 <h1>"+resultDto.getUserid()+"</h1> 입니다"	+"<br>"+"임시 비밀번호는 <h1>"+randomPw+"</h1> 입니다.",true);
			msg.setRecipients(MimeMessage.RecipientType.TO,
			InternetAddress.parse(resultDto.getEmail())); send.send(msg);
			}catch(Exception e) {
			}
			
		}
		
		return checkId;
	}
	
	
	

}//class
