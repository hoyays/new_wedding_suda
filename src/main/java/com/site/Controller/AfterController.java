package com.site.Controller;

import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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

import com.site.dto.AfterDto;
import com.site.dto.CommentDto;
import com.site.service.AfterService;



@Controller
public class AfterController {
	
	@Autowired
	AfterService afterService;
	Map<String,Object> map;
	
	
	@RequestMapping("/noticeboard/after_delete")
	public String after_delete(@RequestParam String bid,@RequestParam @Nullable String page,
			@RequestParam @Nullable String category,@RequestParam @Nullable String search,
			Model model) throws Exception {
		
     	  afterService.boardDelete(bid);
     	 search = URLEncoder.encode(search,"utf-8");
 		return "redirect:/noticeboard/after_list?page="+page+"&category="+category+"&search="+search;
	}
	
	@RequestMapping("/noticeboard/after_modify")
	public String after_modify(AfterDto afterDto,@RequestParam @Nullable String page,
			@RequestParam @Nullable String category,
			@RequestParam @Nullable String search,@RequestPart MultipartFile file,Model model) throws Exception {
		afterService.boardModify(afterDto,file);
		search = URLEncoder.encode(search,"utf-8");
		return "redirect:/noticeboard/after_list?page="+page+"&category="+category+"&search="+search;
		
	}
	
	@RequestMapping("/noticeboard/afterModify_view")
	public String afterModify_view(@RequestParam @Nullable String page,
			@RequestParam @Nullable String category,
			@RequestParam @Nullable String search,
			@RequestParam @Nullable String bid, Model model) {
		map = afterService.boardModify_view(bid,page,category,search);
		model.addAttribute("map",map);
		return "noticeboard/afterModify_view";
	}
	
	@RequestMapping("/noticeboard/afterContent_view")
	public String afterContent_view(@RequestParam @Nullable String page,
			@RequestParam @Nullable String category,
			@RequestParam @Nullable String search,
			@RequestParam @Nullable String bid, Model model) {
		map = afterService.afterContent_view(bid,page,category,search);
		model.addAttribute("map",map);
		return "noticeboard/afterContent_view";
	}
	@RequestMapping("/noticeboard/afterwrite_view")
	public String afterwrite_view() {
		return "noticeboard/after_write";
	}
	
	@RequestMapping("/noticeboard/after_write")
	public String after_write(AfterDto afterDto,@RequestPart MultipartFile file) {
		afterService.after_boardWrite(afterDto,file);
		return "redirect:/noticeboard/after_list";
	}
	
	@RequestMapping("/noticeboard/after_write1")
	@ResponseBody
	public String after_write1(AfterDto afterDto,@RequestPart MultipartFile file) {
		afterService.after_boardWrite(afterDto,file);
		return "1111";
	}
	
	@RequestMapping("/noticeboard/after_list")
	public String after_list(@RequestParam @Nullable String page,
							 @RequestParam @Nullable String category,
							 @RequestParam @Nullable String search,Model model
							 ) {
		
		 System.out.println("page : "+page); 
		 map = afterService.afterListAll(page,category,search);
		 model.addAttribute("map",map);
		 Date now = new Date();
		 model.addAttribute("now", now);
		return "noticeboard/after_list";
	}
	
	
	@RequestMapping("/noticeboard/commentWrite_check") //댓글등록
	@ResponseBody
	public Map<String,Object> commentWrite_check(CommentDto commentDto) {
		map = new HashMap<String, Object>();
		CommentDto dto = afterService.commentWrite_check(commentDto);
		map.put("dto", dto);
		return map;
	}
	
	@RequestMapping("/noticeboard/commentUpdate_check") //댓글수정
	@ResponseBody
	public Map<String,Object> commentUpdate_check(CommentDto commentDto) {
		map = new HashMap<String, Object>();
		System.out.println("controller : "+commentDto.getCommentContent());
		CommentDto dto = afterService.commentUpdate_check(commentDto);
		map.put("dto", dto);
		return map;
	}
	@RequestMapping("/noticeboard/commentDelete") //댓글삭제
	@ResponseBody
	public Map<String,Object> commentDelete(@RequestParam int commentNo) {
		map = new HashMap<String, Object>();
		System.out.println("controller : "+commentNo);
		afterService.commentDelete(commentNo);
		map.put("msg", "삭제되었습니다.!");
		return map;
	}
	

}
