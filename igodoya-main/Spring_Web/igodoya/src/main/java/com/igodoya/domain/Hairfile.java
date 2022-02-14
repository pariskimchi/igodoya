package com.igodoya.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Hairfile {
	private int fileId;
	private String orifileName;
	private String fileName;
	private String filePath;
	private String memberId;
	private String result;
}
