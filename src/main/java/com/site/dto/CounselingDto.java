package com.site.dto;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CounselingDto {
	private String sido;	// 선호하는 장소
	private String cusHuman;	// 하객 인원
	private String cusPrice;	// 식대
	private String name;	
	private String sex; 
	private int phone1;
	private int phone2;
	private int phone3;
	private String cusEnter;	// 결혼예정일
	private String contact_point;	// 방문상담 or 전화상담
	private String content;		// 내용
}
