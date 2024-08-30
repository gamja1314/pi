package FF.service.impl;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import FF.service.FFService;
import FF.service.FFVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


@Service("ffService")
public class FFServiceImpl extends EgovAbstractServiceImpl implements FFService{

	@Resource(name = "FFDAO")
	private FFDAO FFDAO;
	
	@Override
	public String insertFF(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.insertFF(vo);
	}

	@Override
	public List<?> selectFFList(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.selectFFList(vo);
	}

	@Override
	public FFVO selectFFDetail(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.selectFFDetail(vo);
	}

	@Override
	public int updateFF(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.updateFF(vo);
	}

	@Override
	public int deleteFF(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.deleteFF(vo);
	}

	@Override
	public String insertReFFReply(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.insertReFFReply(vo);
	}

	@Override
	public String selectReFFThread(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.selectReFFThread(vo);
	}

	@Override
	public int selectReFFTotal(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.selectReFFTotal(vo);
	}

	@Override
	public String insertReFF(FFVO vo) throws Exception {
		System.out.print("impl 77");
		return FFDAO.insertReFF(vo);
	}

	@Override
	public List<?> selectReFFList(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.selectReFFList(vo);
	}

	@Override
	public int selectReFFFid() throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.selectReFFFid();
	}

	@Override
	public FFVO selectReFFDetail(FFVO vo) throws Exception {
		// TODO Auto-generated method stub
		return FFDAO.selectReFFDetail(vo);
	}

}
