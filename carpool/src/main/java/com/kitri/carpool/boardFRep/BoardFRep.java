package com.kitri.carpool.boardFRep;

public class BoardFRep {
	private int num;
	private String writer;
	private int board_num;
	private String content;
	
	public BoardFRep() {}
	public BoardFRep(int num, String writer, int board_num, String content) {
		super();
		this.num = num;
		this.writer = writer;
		this.board_num = board_num;
		this.content = content;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return "BoardFRep [num=" + num + ", writer=" + writer + ", board_num=" + board_num + ", content=" + content
				+ "]";
	}
	
	
	

}
