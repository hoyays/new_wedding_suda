package com.site.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MallDto {
	
	private String userid;
	private int bid;
	private String btitle;
	private String bcontent;
	private Date bdate;
	private String fileName;
	private int point;

}
