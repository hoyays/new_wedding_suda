package com.site.service;

import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.site.dto.MallDto;

public interface MallService {

	Map<String, Object> mallListAll();

	Map<String, Object> mall_view(int bid, String userid);

	Map<String, Object> mall_userid(String userid, int point);

	void mall_emailSend(String email, int point);

	void mall_write(MallDto mallDto, MultipartFile file);


}
