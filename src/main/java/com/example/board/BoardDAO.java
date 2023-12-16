package com.example.board;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;
  
    public int insertBoard(BoardVO vo) {
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    public int updateBoard(BoardVO vo) {
        int result = sqlSession.update("Board.updateBoard", vo);
        return result;
    }
    public int deleteBoard(int id) {
        int result = sqlSession.delete("Board.deleteBoard", id);
        return result;
    }

    public BoardVO getBoard(int seq) {
        BoardVO one = sqlSession.selectOne("Board.getBoard", seq);
        return one;
    }
    public List<BoardVO> getBoardList() {
        List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
        return list;
    }
}
