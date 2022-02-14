package com.igodoya.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.igodoya.domain.Member;

@Mapper
public interface MemberDao {
	
	public String login(String memberId, String memberPw);
	
	public int memberInput(Member dto);

	public Member getMember(String memberId);

	public ArrayList<Member> allMemberList();
	
	public String selectMemberId(String name, String mobile);
	
}
