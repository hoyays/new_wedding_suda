package com.site.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AfterDto {
	
	private int bid;
	private String userid;
	private String nname;
	private String btitle;
	private String bcontent;
	private Date bdate;
	private int bhit;
	private int breply;
	private String fileName;
	private int bgroup;

}
