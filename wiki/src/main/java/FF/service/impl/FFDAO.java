package FF.service.impl;

import org.springframework.stereotype.Repository;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import FF.service.FFVO;

import java.util.List;

@Repository("FFDAO")
public class FFDAO extends EgovAbstractDAO{
	
	
	public String insertFF(FFVO vo) {
		return (String) insert("FFAO.insertFF", vo);
	}
	public List<?> selectFFList(FFVO vo) {
		return list("FfDAO.selectFFList",vo);
	}

	public FFVO selectFFDetail(FFVO vo) {
		return (FFVO) select("FFDAO.selectFFDetail",vo);
	}

	public int updateFF(FFVO vo) {
		return update("FFDAO.updateFF", vo);
	}

	public int deleteFF(FFVO vo) {
		return delete("FFDAO.deleteFF", vo);
	}

	public String insertReFF(FFVO vo) {
		System.out.println("DAO 77");
		return (String) insert("boardDAO.insertBoard", vo);
	}

	public List<?> selectReFFList(FFVO vo) {
		return list("FFDAO.selectReFFList",vo);
	}

	public int selectReFFFid() {
		return (int) select("FFDAO.selectReFFFid");
	}

	public FFVO selectReFFDetail(FFVO vo) {
		return (FFVO) select("FFDAO.selectReFFDetail",vo);
	}

	public String insertReFFReply(FFVO vo) {
		return (String) insert("FFDAO.insertReFFReply", vo);
	}

	public String selectReFFThread(FFVO vo) {
		return (String) select("FFDAO.selectReFFThread", vo);
	}

	public int selectReFFTotal(FFVO vo) {
		return (int) select("FFDAO.selectReFFTotal",vo);
	}

	

}
