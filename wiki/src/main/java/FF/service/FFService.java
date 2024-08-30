package FF.service;

import java.util.List;



public interface FFService {
	public String insertFF(FFVO vo) throws Exception;
	public List<?> selectFFList(FFVO vo) throws Exception;
	public FFVO selectFFDetail(FFVO vo) throws Exception;
	public int updateFF(FFVO vo) throws Exception;
	public int deleteFF(FFVO vo) throws Exception;
	
	public String insertReFF(FFVO vo) throws Exception;
	public List<?> selectReFFList(FFVO vo) throws Exception;
	public int selectReFFFid() throws Exception;
	public FFVO selectReFFDetail(FFVO vo) throws Exception;
	public String insertReFFReply(FFVO vo) throws Exception;
	public String selectReFFThread(FFVO vo) throws Exception;
	
	public int selectReFFTotal(FFVO vo) throws Exception;

	
}
