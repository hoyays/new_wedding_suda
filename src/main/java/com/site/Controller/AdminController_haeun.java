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

import com.site.dto.Admin_memberDto;
import com.site.dto.MemberDto;
import com.site.service.AdminMemberService;
import com.site.service.AdminMemberService_haeun;

@Controller
public class AdminController_haeun {

	@Autowired
	AdminMemberService_haeun adminMember;

	@RequestMapping("/admin/admin_info_studio")
	public String admin_info_studio(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 스튜디오,드레스,헤/메,신혼여행 리스트 가져오기

		map = adminMember.infoStudioList();

		model.addAttribute("map", map);

		return "/admin/admin_info_studio";
	}
	
	@RequestMapping("/admin/admin_info_dress")
	public String admin_info_dress(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 스튜디오,드레스,헤/메,신혼여행 리스트 가져오기

		map = adminMember.infoDressList();

		model.addAttribute("map", map);

		return "/admin/admin_info_dress";
	}
	
	@RequestMapping("/admin/admin_info_hm")
	public String admin_info_hm(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 스튜디오,드레스,헤/메,신혼여행 리스트 가져오기

		map = adminMember.infoHmList();

		model.addAttribute("map", map);

		return "/admin/admin_info_hm";
	}
	
	@RequestMapping("/admin/admin_info_travel")
	public String admin_info_travel(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 스튜디오,드레스,헤/메,신혼여행 리스트 가져오기

		map = adminMember.infoTravelList();

		model.addAttribute("map", map);

		return "/admin/admin_info_travel";
	}
	
	@RequestMapping("/admin/admin_info_question")
	public String admin_info_question(Model model) {
		Map<String, Object> map = new HashMap<String, Object>();

		map = adminMember.infoQuestionList();

		model.addAttribute("map", map);

		return "/admin/admin_info_question";
	}

}// class
