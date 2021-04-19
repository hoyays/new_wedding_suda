package com.site.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeDto {
	
	private int bid;
	private String id;
	private String btitle;
	private String bcontent;
	private String bdate;
	private int bhit;
	private String fileName;

}
