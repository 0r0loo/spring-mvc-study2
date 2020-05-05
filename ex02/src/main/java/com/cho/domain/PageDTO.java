package com.cho.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {

	// 시작 페이지
	private int startPage;
	
	// 마지막 페이지 
	private int endPage;
	
	// 이전 다음
	private boolean prev, next;
	
	// 게시글수
	private int total;
	
	// 현재 페이지 번호  , 한페이지당 보여줄 게시글수
	private Criteria cri;

	
	
	
	
	
	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
	
		this.endPage = (int)(Math.ceil(cri.getPageNum() / 10.0)) * 10;
		
		this.startPage = this.endPage - 9;
		
		int realEnd = (int)(Math.ceil((total * 1.0) / cri.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		
		this.next = this.endPage < realEnd;
		
	}
	
	
	
}
