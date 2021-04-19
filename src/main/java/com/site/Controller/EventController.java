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
import org.springframework.web.multipart.MultipartFile;

import com.site.dto.AfterDto;
import com.site.dto.EventDto;
import com.site.service.EventService;

@Controller
public class EventController {
	
	@Autowired
	EventService eventService;
	
	@Autowired
	Map<String,Object> map;
	
	@RequestMapping("/event")
	public String eventList(Model model) {
		 map = eventService.eventListAll();
		 model.addAttribute("map",map);
		return "/event/event";
	}
	
	@RequestMapping("/event_view")
	public String eventContent_view(@RequestParam @Nullable String page,
			@RequestParam @Nullable String category,
			@RequestParam @Nullable String search,
			@RequestParam @Nullable String bid, Model model) {
		map = eventService.eventContent_view(bid);
		model.addAttribute("map",map);
		return "event/event_view";
	}
	@RequestMapping("/event_writeview")
	public String event_write() {
		return "event/event_write";
	}
	@RequestMapping("/event_write")
	public String event_write(EventDto eventdto,@RequestPart MultipartFile file) {
		eventService.event_boardWrite(eventdto,file);
		return "redirect:/event/event";
	}
	
	@RequestMapping("/eventModify_view")
	public String eventModify_view(@RequestParam @Nullable String bid, Model model) {
		map = eventService.boardModify_view(bid);
		model.addAttribute("map",map);
		return "event/eventModify_view";
	}
	
	@RequestMapping("/event_modify")
	public String event_modify(EventDto eventDto ,@RequestPart MultipartFile file,Model model) throws Exception {
		eventService.boardModify(eventDto,file);
		return "redirect:/event";
		
	}
	
	@RequestMapping("/event_delete")
	public String event_delete(@RequestParam String bid, Model model) throws Exception {
		
     	  eventService.boardDelete(bid);
 		return "redirect:/event";
	}
	
	
	
	
}
