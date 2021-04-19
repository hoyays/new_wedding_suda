package com.site.dto;


import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BuyboardDto {
	
	private int bid;
	private String userid;
	private String name;
	private String buydate;
	private String btitle;
	private int usepoint;
	

}
