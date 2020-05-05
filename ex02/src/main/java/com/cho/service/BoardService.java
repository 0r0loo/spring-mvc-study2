package com.cho.service;

import java.util.List;

import com.cho.domain.BoardVO;
import com.cho.domain.Criteria;

public interface BoardService {

	public void register(BoardVO board);
	
	// 특정 게시물 가져오기
	public BoardVO get(Long bno);
	
	public boolean modify(BoardVO board);
	
	public boolean remove(Long bno);
	
	// 전체 게시물 가져오기
	//public List<BoardVO> getList();
	public List<BoardVO> getList(Criteria cri);
	
	// 전체 게시글수
	public int getTotal(Criteria cri);
}
