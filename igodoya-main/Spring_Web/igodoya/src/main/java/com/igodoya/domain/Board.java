package com.igodoya.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Board {
	private int idx;
	private String title;
	private String content;
	private String regDate;
	private int views;
	private String orifileName;
	private String fileName;
	private String filePath;
	private String memberId;
}
