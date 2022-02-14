package com.igodoya.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.Page;
import com.igodoya.dao.BoardDao;
import com.igodoya.domain.Board;
import com.igodoya.util.Utility;

@Service
public class BoardService {
	
	@Autowired
	private BoardDao boardDao;
	
	public Page<Board> getBoardList(){
		return boardDao.getBoardList();
	}
	
	public boolean addBoard(MultipartFile files, Board dto) {
		dto.setRegDate(Utility.getCurrentDate());
		if(boardDao.addBoard(dto) > 0) {
			return true;
		} else {
			return false;
		}
	}

	public Board getBoard(int idx) {
		return boardDao.getBoard(idx);
	}
	
	public boolean modBoard(MultipartFile files, Board dto) {
		dto.setRegDate(Utility.getCurrentDate());
		if(boardDao.modBoard(dto) > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean delBoard(int idx) {
		if(boardDao.delBoard(idx) > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean boardViews(int idx) {
		if(boardDao.boardViews(idx) > 0) {
			return true;
		} else {
			return false;
		}
	}
}
