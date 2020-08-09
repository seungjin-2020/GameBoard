package com.example.demo.MemberService;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Util.CUtil;
import com.example.demo.dao.MemberDao;
import com.example.demo.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao memberdao;
	
	public Map<String, Object> join(Map<String, Object> args) {
		Map<String, Object> rs = new HashMap<>();
		String loginID = (String)args.get("loginID");
		
		Member oldMember = memberdao.finByLoginId(loginID);
		
		if(oldMember != null) {
			if(oldMember.isOutStatus()) {
				rs.put("resultCode", "F-2");
				rs.put("msg", loginID + "은(는) 탈퇴한 회원의 로그인 아이디 입니다");
			}else {
				rs.put("resultCode", "F-1");
				rs.put("msg", loginID + "은(는) 사용중인 로그인 아이디 입니다");
			}
			return rs;
		}
		
		int id = memberdao.getlastId();
		String regDate = CUtil.getNowDateStr();
		String loginPW = (String)args.get("loginPW");
		String loginName = (String)args.get("loginName");
		String loginEmail = (String)args.get("loginEmail");
		String loginNickName = (String)args.get("loginNickName");
		Member newMember = new Member(id, regDate, loginID, loginPW, loginName, loginEmail, loginNickName,false);
		
		memberdao.add(newMember);
		
		rs.put("resultCode", "S-1");
		rs.put("msg", loginName + "님 가입을 축하합니다");
		
		
		return rs;
	}
}
