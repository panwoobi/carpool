package com.kitri.carpool.boardFRep;

import java.util.ArrayList;

public interface BoardFRepDao {
    void insert(BoardFRep br);
    void update(BoardFRep br);
    ArrayList<BoardFRep> selectByBoardFNum(int board_num);
    void delete(int num);
}
