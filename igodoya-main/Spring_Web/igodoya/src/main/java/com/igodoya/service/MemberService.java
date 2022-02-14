package com.igodoya.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igodoya.dao.MemberDao;
import com.igodoya.domain.Member;
import com.igodoya.util.Utility;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberDao;
	
	public String login(String memberId, String memberPw) {
		return memberDao.login(memberId, memberPw);
	}

	public int memberInput(Member dto) {
		dto.setEntryDate(Utility.getCurrentDate());
		dto.setGrade("G");
		return memberDao.memberInput(dto);
	}

	public Member getMember(String memberId) {
		return memberDao.getMember(memberId);
	}
	
	public ArrayList<Member> allMemberList(){
		return memberDao.allMemberList();
	}
	
	public String getMemberId(String name, String mobile) {
		return memberDao.selectMemberId(name, mobile);
	}
}
