package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.example.demo.dto.Member;

@Component
public class MemberDao {
	private List<Member> members;
	private int lastId;
	MemberDao(){
		members = new ArrayList<>();
		lastId = 0;
	}
	
	public int add(Member member) {
		members.add(member);
		
		lastId = member.getId();
		return member.getId();
	}

	public int getlastId() {
		
		return lastId + 1;
	}

	public Member finByLoginId(String loginID) {
		for(Member member : members) {
			if(member.getLoginID().equals(loginID)) {
				return member;
			}
		}
		return null;
	}


}
