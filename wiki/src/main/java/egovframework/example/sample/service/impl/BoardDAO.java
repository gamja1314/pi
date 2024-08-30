package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.BoardVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO {


	public String insertMember(BoardVO vo) {
		return (String) insert("boardDAO.insertMember", vo);
	}

	public String insertBoard(BoardVO vo) {
		return (String) insert("boardDAO.insertBoard", vo);
	}

	public List<?> selectBoardList(BoardVO vo) {
		return list("boardDAO.selectBoardList",vo);
	}

	public BoardVO selectBoardDetail(BoardVO vo) {
		return (BoardVO) select("boardDAO.selectBoardDetail",vo);
	}

	public int updateBoard(BoardVO vo) {
		return update("boardDAO.updateBoard", vo);
	}

	public int deleteBoard(BoardVO vo) {
		return delete("boardDAO.deleteBoard", vo);
	}

	public String insertReBoard(BoardVO vo) {
		return (String) insert("boardDAO.insertReBoard", vo);
	}

	public List<?> selectReBoardList(BoardVO vo) {
		return list("boardDAO.selectReBoardList",vo);
	}

	public int selectReBoardFid() {
		return (int) select("boardDAO.selectReBoardFid");
	}

	public BoardVO selectReBoardDetail(BoardVO vo) {
		return (BoardVO) select("boardDAO.selectReBoardDetail",vo);
	}

	public String insertReBoardReply(BoardVO vo) {
		return (String) insert("boardDAO.insertReBoardReply", vo);
	}

	public String selectReBoardThread(BoardVO vo) {
		return (String) select("boardDAO.selectReBoardThread", vo);
	}

	public int selectReBoardTotal(BoardVO vo) {
		return (int) select("boardDAO.selectReBoardTotal",vo);
	}

	public int selectMemberIdPwdCheck(BoardVO vo) {
		return (int) select("boardDAO.selectMemberIdPwdCheck",vo);
	}

}



