package com.igodoya.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.igodoya.domain.Member;
import com.igodoya.service.MemberService;
import com.igodoya.controller.MemberController;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(String memberId, String memberPw, HttpSession session) {
		String grade = memberService.login(memberId, memberPw);
		
		if(grade!=null) {
			session.setAttribute("memberId", memberId);
			session.setAttribute("grade", grade);
			
			return "main";
		} else {
			return "index";
		}
	}
	
	@GetMapping("/main")
	public String showMain(HttpSession session) {
		if(session != null) {
			if (session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				return "main";
			}
		}
		return "index";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		if(session != null) {
			if (session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				session.removeAttribute("memberId");
				session.removeAttribute("grade");
				session.invalidate();
				return "index";
			}
		}		
		return "index";
	}
	
	@GetMapping("/memberInputForm")
	public String memberInputForm() {
		return "memberInput";
	}
	
	@PostMapping("/memberInput")
	public String memberInput(Member dto, Model model) {
		int flag = memberService.memberInput(dto);
		if (flag == 1) {
			model.addAttribute("message", "회원 등록에 성공하였습니다.");
		} else {
			model.addAttribute("message", "회원 등록에 실패하였습니다.");
		}
		return "index";
	}
	
	@GetMapping("/memberInfoForm")
	public String myInfoForm(HttpSession session, Model model) {
		if (session.getAttribute("memberId") != null) {
			String memberId = (String)session.getAttribute("memberId");
			Member dto = memberService.getMember(memberId);
			model.addAttribute("dto", dto);
			return "memberInfo";
		} else {
			// 오류 처리
			session.invalidate();
			model.addAttribute("message", "올바른 요청이 아닙니다. 다시 요청하시기 바랍니다.");
			return "main";
		}
	}
	
	@GetMapping("/allMemberInfoForm")
	public String allMemberInfoForm(HttpSession session, Model model) {
		if(session != null) {
			if (session.getAttribute("memberId").equals("admin") && session.getAttribute("grade").equals("A")) {
				ArrayList<Member> list = memberService.allMemberList();
				model.addAttribute("memberList", list);
				return "allMemberInfo";
			}
		}
		return "index";
	}
	
	@GetMapping("/findMemberIdForm")
	public String findMemberIdForm() {
		return "findMemberId";
	}
	
	@PostMapping("/findMemberIdResult")
	public String findMemberId(String name, String mobile, HttpSession session) {
		String memberId = memberService.getMemberId(name, mobile);
		if (memberId != null) {
			session.setAttribute("memberId", memberId);
			session.setAttribute("message", "멤버 아이디를 찾았습니다.");
			return "findMemberIdResult";
		} else {
			//session.setAttribute("message", "[오류] 해당하는 회원정보가 없습니다.");
		}
		return "index";		
	}
	
	@GetMapping("/findMemberPwForm")
	public String findMemberPwForm() {
		return "findMemberPw";
	}
	
	@PostMapping("/findMember")
	public String findMemberPw(String memberId, String name, String mobile) {
		return "findMemberPwResult";
	}
}
