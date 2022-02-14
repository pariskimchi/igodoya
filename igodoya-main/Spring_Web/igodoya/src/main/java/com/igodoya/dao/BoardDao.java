package com.igodoya.dao;

import org.apache.ibatis.annotations.Mapper;

import com.github.pagehelper.Page;
import com.igodoya.domain.Board;

@Mapper
public interface BoardDao {

	public Page<Board> getBoardList();
	
	public int addBoard(Board dto);
	
	public Board getBoard(int idx);
	
	public int modBoard(Board dto);
	
	public int delBoard(int idx);
	
	public int boardViews(int idx);
}
