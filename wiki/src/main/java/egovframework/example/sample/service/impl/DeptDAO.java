package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.DeptVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;


@Repository("deptDAO")
public class DeptDAO extends EgovAbstractDAO{

	public String insertDept(DeptVO vo) {
		return (String) insert("deptDAO.insertDept", vo);
	}

	public List<?> selectDeptList() {
		return list("deptDAO.selectDeptList");
	}

	public DeptVO selectDeptDetail(DeptVO vo) {
		return (DeptVO) select("deptDAO.selectDeptDetail",vo);
	}

	public int updateDept(DeptVO vo) {
		return update("deptDAO.updateDept",vo);
	}

	public int deleteDept(DeptVO vo) {
		return delete("deptDAO.deleteDept",vo);
	}
}