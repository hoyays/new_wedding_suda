package com.site.Controller;

import java.net.URLEncoder;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.site.dto.NoticeDto;
import com.site.service.NoticeService;


@Controller
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	Map<String,Object> map;
	
	
	@RequestMapping("/noticeboard/delete")
	public String delete(@RequestParam String bid,@RequestParam @Nullable String page,
			@RequestParam @Nullable String category,@RequestParam @Nullable String search,
			Model model) throws Exception {
		
     	  noticeService.boardDelete(bid);
     	 search = URLEncoder.encode(search,"utf-8");
 		return "redirect:/noticeboard/list?page="+page+"&category="+category+"&search="+search;
	}
	
	
	@RequestMapping("/noticeboard/notice_modify")
	public String notice_modify(NoticeDto noticeDto,@RequestParam @Nullable String page,
			@RequestParam @Nullable String category,
			@RequestParam @Nullable String search,@RequestPart MultipartFile file,Model model) throws Exception {
		noticeService.boardModify(noticeDto,file);
		search = URLEncoder.encode(search,"utf-8");
		return "redirect:/noticeboard/list?page="+page+"&category="+category+"&search="+search;
		
	}
	
	@RequestMapping("/noticeboard/modify_view")
	public String notice_modify_view(@RequestParam @Nullable String page,
			@RequestParam @Nullable String category,
			@RequestParam @Nullable String search,
			@RequestParam @Nullable String bid, Model model) {
		map = noticeService.boardModify_view(bid,page,category,search);
		model.addAttribute("map",map);
		return "noticeboard/modify_view";
	}
	
	@RequestMapping("/noticeboard/noticeContent_view")
	public String noticeContent_view(@RequestParam @Nullable String page,
			@RequestParam @Nullable String category,
			@RequestParam @Nullable String search,
			@RequestParam @Nullable String bid, Model model) {
		map = noticeService.noticeContent_view(bid,page,category,search);
		model.addAttribute("map",map);
		return "noticeboard/noticeContent_view";
	}
	@RequestMapping("/noticeboard/noticewrite_view")
	public String notice_write_view() {
		return "noticeboard/notice_write";
	}
	
	@RequestMapping("/noticeboard/notice_write")
	public String notice_write(NoticeDto noticeDto,@RequestPart MultipartFile file) {
		noticeService.notice_boardWrite(noticeDto,file);
		return "redirect:/noticeboard/notice_list";
	}
	
	@RequestMapping("/noticeboard/notice_list")
	public String notice_list(
							 @RequestParam @Nullable String page,
							  
							  @RequestParam @Nullable String category,
							  
							  @RequestParam @Nullable String search,Model model
							 ) {
		
		 System.out.println("page : "+page); map =
		 noticeService.noticeListAll(page,category,search);
		 model.addAttribute("map",map);
		return "noticeboard/notice_list";
	}
	
	@RequestMapping("/noticeboard/nomal")
	public String normal() {
		return "noticeboard/nomal";
	}
	

}
