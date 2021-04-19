package com.site.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.site.dto.MemberDto;
import com.site.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;

	@RequestMapping("/member/join")
	public String join() {
		return "/member/join";
	}
	
	@RequestMapping("/member/joinCheck")
	public String joinCheck(MemberDto memberDto, Model model) {
		
		int check = memberService.memberJoin(memberDto);
		System.out.println("con, check : "+check);
		model.addAttribute("check", check);
		
		return "/member/joinCheck";
	}
	
	@RequestMapping("/member/login")
	public String login() {
		return "/member/login";
	}
	
	@RequestMapping("/member/joinComplete")
	public String joinComplete() {
		return "/member/joinComplete";
	}
	
	@RequestMapping("/member/loginCheck")
	public String loginCheck(@RequestParam String userid, @RequestParam String pwd, HttpServletRequest request) {
		
		System.out.println("controller userid : "+userid);
		System.out.println("controller pwd : "+pwd);
		HttpSession session = request.getSession();
		Map<String, Object> map = memberService.memberLogin(userid,pwd);
		
		System.out.println("loginCheck : "+map.get("loginCheck"));
		
		if((int)map.get("loginCheck") == 1 ) {
			session.setAttribute("session_flag", "success");
			session.setAttribute("session_userid", ((MemberDto)map.get("memberDto")).getUserid());
			session.setAttribute("session_name", ((MemberDto)map.get("memberDto")).getName());
			session.setAttribute("session_nickName",((MemberDto) map.get("memberDto")).getNickName());
			session.setAttribute("session_businessTy",((MemberDto) map.get("memberDto")).getBusinessTy());
			session.setAttribute("session_point",((MemberDto) map.get("memberDto")).getPoint());
		}else {
			session.setAttribute("session_flag", "fail");
		}
		
		return "/member/login_check";
	}
	
	@RequestMapping("/member/logout")
	public String logout() {
		return "/member/logout";
	}
	
	
	@RequestMapping("/member/useridDoubleCheck")
	@ResponseBody
	public int useridDoubleCheck(@RequestParam String userid) {
		
		int result = memberService.memberUseridDoubleCheck(userid);
		
		return result;
	}
	
	@RequestMapping("/member/userInfoModify_pwdCheck")
	public String userInfoModify_pwdCheck() {
		return "/member/userInfoModify_pwdCheck";
	}
	
	@RequestMapping("/member/useridModify_view")
	public String useridModify_view(MemberDto memberDto, Model model) {
		
		MemberDto resultDto = memberService.useridModify_view(memberDto);
		model.addAttribute("resultDto", resultDto);
		
		return "/member/useridModify_view";
	}
	
	
	@RequestMapping("/member/modifyCheck")
	public String modifyCheck(@Nullable MemberDto memberDto, Model model) {
		
		int check = memberService.memberModify(memberDto);
		System.out.println("con, check : "+check);
		model.addAttribute("check", check);
		
		return "/member/modifyCheck";
	}
	
    @RequestMapping("/member/EmailCheck")
    @ResponseBody
    public HashMap<String, Object> EmailCheck(String emailAdr) {
       HashMap<String, Object> map = new HashMap<String, Object>();
       String randomNum = memberService.emailCheck(emailAdr);
       
       if (randomNum.equals("false")) {
          // 이메일 발송에 실패한경우
          map.put("result","false");
       }else {
          map.put("result", "true");
          map.put("randomNum", randomNum);
       }
       return map;
    }
	
	
	
	
	
	
}//class
