package egovframework.example.sample.service;

import java.util.List;

public interface DeptService {
		public String insertDept(DeptVO vo) throws Exception;
		public List<?> selectDeptList() throws Exception;
		public DeptVO selectDeptDetail(DeptVO vo) throws Exception;
		public int updateDept(DeptVO vo) throws Exception;
		public int deleteDept(DeptVO vo) throws Exception;
}
