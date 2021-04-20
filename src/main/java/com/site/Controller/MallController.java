package com.site.Controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.ui.Model;

import com.site.dto.BuyboardDto;
import com.site.dto.MallDto;
import com.site.dto.MemberDto;
import com.site.service.MallService;

@Controller
public class MallController {
	
	@Autowired
	MallService mallService;
	Map<String,Object> map;
	
	
	
	@RequestMapping("/mall")
	public String mall(Model model) {
		map = mallService.mallListAll();
		model.addAttribute("map",map);
		
		return "mall/mall";
	}
	
	@RequestMapping("/mall_view")
	public String mall_view(Model model,@RequestParam int bid, HttpSession session) {
		String userid=(String)session.getAttribute("session_userid"); 
		map = mallService.mall_view(bid,userid);
		model.addAttribute("map",map);
		return "mall/mall_view";
	}
	
	@RequestMapping("/buy")
	public  String buy(@RequestParam String userid,int usepoint,String email, BuyboardDto buyboardDto,HttpServletRequest request) {
		int getpoint=mallService.mall_userid(userid,usepoint);
		HttpSession session = request.getSession();
		System.out.println("컨트롤러"+usepoint);
		//mallService.mall_emailSend(email,point);
		mallService.mall_buy_board(buyboardDto);
		session.setAttribute("session_point",getpoint);
		return "mall/buy";
	}
	
	@RequestMapping("/mall_writeView")
	public  String mall_writeView() {
		return "mall/mall_write";
	}
	
	@RequestMapping("/mall_write")
	public  String mall_write(MallDto mallDto,@RequestPart MultipartFile file) {
		mallService.mall_write(mallDto,file);
		return "redirect:/mall";
	}
	
	
	
	
}
