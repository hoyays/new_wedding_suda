package com.site.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.site.dto.CounselingDto;
import com.site.service.CounselingService;

@Controller
public class CounselingController {
	
	@Autowired
	CounselingService counselingService;
	Map<String, Object> map;
	
	// 예약 컨트롤러
	@RequestMapping("/hall/hall_reservation")
	public String hall_reservation() {
		return "/hall/hall_reservation";
	}
	
	@RequestMapping("/hall/counseling_reservation")
	public String counseling_reservation(CounselingDto counselingDto, Model model) {
		System.out.println("counselingDto: "+counselingDto);
		System.out.println("counselingDto name변수: "+counselingDto.getName());
		counselingService.counselingRequest(counselingDto);
		model.addAttribute("map", map);
		return "/main/main";
	}
}// class
