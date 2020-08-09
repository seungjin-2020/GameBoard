package com.example.demo.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Member {
	private int id;
	private String regDate;
	private String  loginID;
	private String loginPW;
	private String loginName;
	private String loginEmail;
	private String loginNickName;
	private boolean outStatus;
	
}

