package com.igodoya.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.igodoya.domain.Board;
import com.igodoya.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/boardList")
	public String boardList(@RequestParam(value="page", required=false, defaultValue="1")int page, HttpSession session, Model model) {
		if(session != null) {
			if(session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				int perPage = 10;
				// 몇 페이지에 대한 조회인지 설정 후 조회
				PageHelper.startPage(page, perPage);
				Page<Board> list = boardService.getBoardList();
				model.addAttribute("boardList", list);
				model.addAttribute("total", list.getTotal());
				model.addAttribute("pages", list.getPages());
				model.addAttribute("pageNum", list.getPageNum());
				return "boardList";
			}
		}
		model.addAttribute("msg","로그인 후 이용해 주세요");
        model.addAttribute("url","/index");
		return "alertRedirect"; 
	}
	
	@GetMapping("/boardWriteForm")
	public String boardWriteForm(HttpSession session, Model model) {
		if(session != null) {
			if(session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				return "boardWrite";
			}
		}
		model.addAttribute("msg","로그인 후 이용해 주세요");
        model.addAttribute("url","/index");
		return "alertRedirect"; 
	}
	
	@PostMapping("/boardWrite")
	public String boardWrite(@RequestParam("file") MultipartFile files, Board dto, HttpSession session, Model model) {
		if(session != null) {
			if (session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				dto.setMemberId((String)session.getAttribute("memberId"));
				if(boardService.addBoard(files, dto)) {
					model.addAttribute("msg","게시글이 등록 되었습니다.");
		            model.addAttribute("url","/boardList");
		            return "alertRedirect"; 
				}
			}
		}
		model.addAttribute("msg","게시글 등록에 실패 하였습니다.");
        model.addAttribute("url","/boardList");
		return "alertRedirect"; 
	}
	
	@GetMapping("/boardForm")
	public String boardForm(int idx, HttpSession session, Model model) {
		if(session != null) {
			if (session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				boardService.boardViews(idx);
				model.addAttribute("dto", boardService.getBoard(idx));
				return "boardForm";
			}
		}
		model.addAttribute("msg","로그인 후 이용해 주세요");
        model.addAttribute("url","/index");
		return "alertRedirect"; 
	}
	
	@GetMapping("/boardModifyForm")
	public String boardModifyForm(int idx, HttpSession session, Model model) {
		if(session != null) {
			if (session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				model.addAttribute("dto", boardService.getBoard(idx));
				return "boardModify";
			}
		}
		model.addAttribute("msg","로그인 후 이용해 주세요");
        model.addAttribute("url","/index");
		return "alertRedirect"; 
	}
	
	@PostMapping("/boardModify")
	public String boardModify(@RequestParam("file") MultipartFile files, Board dto, HttpSession session, Model model) {
		if(session != null) {
			if(session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				String loginId = (String)session.getAttribute("memberId");
				Board oldDto = boardService.getBoard(dto.getIdx());
				if(loginId.equals(oldDto.getMemberId())) { // 세션 아이디와 등록된 글의 아이디가 일치하는지 여부 확인
					dto.setViews(oldDto.getViews());
					if(boardService.modBoard(files, dto)) {
						model.addAttribute("msg","게시글이 수정 되었습니다.");
			            model.addAttribute("url","/boardList");
			            return "alertRedirect"; 
					}	
				}
			}
		}
		model.addAttribute("msg","게시글 수정에 실패 하였습니다.");
        model.addAttribute("url","/boardForm?idx=" + dto.getIdx());
		return "alertRedirect"; 
	}
	
	@GetMapping("/boardDelete")
	public String boardDelete(int idx, HttpSession session, Model model) {
		if(session != null) {
			if(session.getAttribute("memberId") != null && session.getAttribute("grade") != null) {
				String loginId = (String)session.getAttribute("memberId");
				Board oldDto = boardService.getBoard(idx);
				if(loginId.equals(oldDto.getMemberId())) { // 세션 아이디와 등록된 글의 아이디가 일치하는지 여부 확인
					if(boardService.delBoard(idx)) {
						model.addAttribute("msg","게시글이 삭제 되었습니다.");
			            model.addAttribute("url","/boardList");
			            return "alertRedirect"; 
					}
				}
			}
		}
		model.addAttribute("msg","게시글 삭제에 실패 하였습니다.");
		model.addAttribute("url","/boardForm?idx=" + idx);
        return "alertRedirect"; 
	}
}
