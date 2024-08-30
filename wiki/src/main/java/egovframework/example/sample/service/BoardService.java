package egovframework.example.sample.service;

import java.util.List;


public interface BoardService { //참고
	public String insertBoard(BoardVO vo) throws Exception;
	public List<?> selectBoardList(BoardVO vo) throws Exception;
	public BoardVO selectBoardDetail(BoardVO vo) throws Exception;
	public int updateBoard(BoardVO vo) throws Exception;
	public int deleteBoard(BoardVO vo) throws Exception;
	
	public String insertReBoard(BoardVO vo) throws Exception;
	public List<?> selectReBoardList(BoardVO vo) throws Exception;
	public int selectReBoardFid() throws Exception;
	public BoardVO selectReBoardDetail(BoardVO vo) throws Exception;
	public String insertReBoardReply(BoardVO vo) throws Exception;
	public String selectReBoardThread(BoardVO vo) throws Exception;
	
	public int selectReBoardTotal(BoardVO vo) throws Exception;
	public String insertMember(BoardVO vo) throws Exception;
	int selectMemberIdPwdCheck(BoardVO vo);
}
