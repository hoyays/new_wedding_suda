package com.site.Controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.site.dto.Admin_memberDto;
import com.site.dto.MemberDto;
import com.site.service.AdminMemberService;

@Controller
public class AdminController_yunsun {
	
	@Autowired
	AdminMemberService adminMember;
	
	//변수선언
	Map<String, Object> map;

	@RequestMapping("/admin/admin_login")
	public String admin_login() {
		return "/admin/admin_login";
	}
	
	@RequestMapping("/admin/admin_loginCheck")
	public String admin_loginCheck(@RequestParam String admin_id, @RequestParam String admin_pw, HttpServletRequest request, Model model) {
		
		Map<String, Object> map = adminMember.adminLoginCheck(admin_id, admin_pw);
		
		HttpSession session = request.getSession();
		int loginCheck = (int) map.get("loginCheck");
		if(loginCheck == 1) {
			session.setAttribute("admin_session_flag", "success");
			session.setAttribute("session_admin_id", ((Admin_memberDto)map.get("dto")).getAdmin_id());
			session.setAttribute("session_admin_name", ((Admin_memberDto)map.get("dto")).getAdmin_name());
		}else {
			session.setAttribute("admin_session_flag", "fail");
		}
		
		return "/admin/admin_loginCheck";
	}
	
	@RequestMapping("/admin/admin_memberStatus")
	public String admin_memberStatus(@RequestParam @Nullable String page, 			
			@RequestParam @Nullable String search, Model model) {
		
		
		map = adminMember.boardMemberListAll(page, search);
		
		model.addAttribute("map", map);
		
		return "/admin/admin_memberStatus";
	}
	
	@RequestMapping("/admin/admin_logout")
	public String admin_logout() {
		return "/admin/admin_logout";
	}
	
	@RequestMapping("/admin/admin_inquiryBoard")
	public String admin_inquiryBoard() {
		return "/admin/admin_inquiryBoard";
	}
	
	

	

	
	
	
}//class
