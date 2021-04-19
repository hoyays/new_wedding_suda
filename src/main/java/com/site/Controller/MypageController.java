package com.site.Controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.site.service.MyPageService;

@Controller
public class MypageController {
	
	@Autowired
	MyPageService myPageService;
	Map<String,Object> map;
	
	
	@RequestMapping("/myPoint")
	public String myPoint(@RequestParam @Nullable String page,Model model,@RequestParam String userid) {
		map = myPageService.myPointListAll(page,userid);
		model.addAttribute("map",map);
		return "/member/myPoint";
	}
	

}
