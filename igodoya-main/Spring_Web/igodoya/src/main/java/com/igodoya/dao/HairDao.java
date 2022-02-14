package com.igodoya.dao;

import org.apache.ibatis.annotations.Mapper;

import com.igodoya.domain.Hairfile;

@Mapper
public interface HairDao {
	
	public int hairfileInput(Hairfile dto);

}
