package com.site.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EventDto {
	
	private String userid;
	private String nickname;
	private int bid;
	private String btitle;
	private String bcontent;
	private Date bdate;
	private String fileName;

}
