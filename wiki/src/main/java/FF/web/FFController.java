package FF.web;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import egovframework.example.sample.service.BoardService;
import egovframework.example.sample.service.BoardVO;




@Controller
public class FFController {

		
	@Resource(name = "boardService")
	private BoardService boardService;
	
	/** MappingJackson2JsonView */
	@Resource(name = "jsonView")
	protected MappingJackson2JsonView jsonView;
	
	/*@Resource(name="ffService")
	private FFService ffService;

	//** MappingJackson2JsonView 
	@Resource(name = "jsonView")
	protected MappingJackson2JsonView jsonView;

	
	@RequestMapping(value = "/FFwrite.do")
	public String ffWrite() {
		return "Pi/FFwrite";
	}

	*/
	@RequestMapping(value="/memberReg.do")
	public String memberReg() {	
		return "login/memberReg";
	}
	
	
	
	
	@RequestMapping(value="/memberRegSave.do")
	@ResponseBody public Map<String, Object> insertMember(BoardVO vo) throws Exception {
		
		String result = "";
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		System.out.println("=====member controller====" + vo.getName());

		result = boardService.insertMember(vo);
		if(result == null) result = "ok";
		map.put("sss", result);

		return map;
	}

	@RequestMapping(value = "/page_login.do")
	@ResponseBody public Map<String, Object> loginAction(
										BoardVO vo,
										HttpServletRequest request
										) throws Exception {
		int cnt = -1;
		HashMap<String, Object> map = new HashMap<String, Object>();

		cnt = boardService.selectMemberIdPwdCheck(vo);

		if(cnt > 0) {
			/* 세션 변수 생성 */
			map.put("memId", vo.getMemId());
			map.put("memPwd", vo.getMemPwd());
			
			request.getSession().setAttribute("loginCertification", map);
		} 
		map.put("cnt", cnt);
		return map;
	}
	
	@RequestMapping(value = "/logOut.do")
	@ResponseBody public Map<String, Object> logOutAction(
										BoardVO vo,
										HttpServletRequest request
										) throws Exception {
		HashMap<String, Object> map = new HashMap<String, Object>();
		request.getSession().setAttribute("loginCertification", null);
		map.put("result","ok");
		return map;
	}
	
	
	
	
	
	@RequestMapping(value="/daemun.do")
	public String daemun() {	
		return "dm/daemun";
	}
	@RequestMapping(value="/comunity.do")
	public String page_comunity() {	
		return "pg/page_comunity";
	}
	@RequestMapping(value="/login.do")
	public String page_login() {	
		return "pg/page_login";
	}
	@RequestMapping(value="/sign.do")
	public String page_sign() {	
		return "pg/page_sign";
	}
	@RequestMapping(value="/ms.do")
	public String page_master() {	
		return "pg/page_master";
	}
	@RequestMapping(value="/mypage.do")
	public String page_mypage() {	
		return "pg/page_mypage";
	}
	
	
	////////게시판
	/*@RequestMapping(value="/cmnt1.do")
	public String cmnt1() {	
		return "pg/page_cmnt1";
	}*/
	
	@RequestMapping(value="/cmnt1.do")
	public String selectReBoardList(BoardVO vo, ModelMap model) throws Exception {
		
		int pageUnit = 10;
		
		
		int total = boardService.selectReBoardTotal(vo);
		int lastPage = (int) Math.ceil((double)total/pageUnit);
		
		int pageNo = vo.getPageNo();
		
		if(pageNo == 0 ) {
			 pageNo = 1;
			
		}
		
		int firstIdx = (pageNo - 1) * pageUnit +1;
		int lastIdx = firstIdx + (pageUnit-1);
		
		vo.setFirstIdx(firstIdx);
		vo.setLastIdx(lastIdx);
		
		
		List<?> list = boardService.selectReBoardList(vo);
		
		
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("resultList",list);
		return "pg/page_cmnt1";
	}
	
	@RequestMapping(value="/cmnt1Write.do")
	public String cmnt1Write() {	
		return "pg/cmnt1_Write";
	}
	
	
	@RequestMapping(value="/cmnt1WriteSave.do")
	public String insertBoard(BoardVO vo) throws Exception {
	
	vo.setHit(100);	
	// ret => 결과 값 ;; ok : null; fail : x 	
	String ret = boardService.insertBoard(vo);	
	return "redirect:/cmnt1.do";	
	
	}
	
	
	/*@RequestMapping(value="/cmnt1Detail.do")
	public String selectBoardDetail(BoardVO vo, ModelMap model) throws Exception {
		
		vo = boardService.selectBoardDetail(vo);
		
		System.out.println(vo.getUnq());
		System.out.println(vo.getTitle());
		System.out.println(vo.getPwd());
		System.out.println(vo.getName());
		System.out.println(vo.getContent());
		
		model.addAttribute("boardVO",vo);
		
		return "pg/cmnt1_Detail";
	}//이거파일추가해야함???
*/	
	@RequestMapping(value="/recmnt1Detail.do")
	public String selectReBoardDetail(BoardVO vo, ModelMap model) throws Exception {
		
		vo = boardService.selectReBoardDetail(vo);
		model.addAttribute("boardVO",vo);
		
		return "pg/cmnt1_Detail";
	}
	
	@RequestMapping(value="/cmnt1DetailSave.do")
	public String updateBoard(BoardVO vo, ModelMap model) throws Exception {
		int ret = boardService.updateBoard(vo);
		
		if(ret== 0) {
			System.out.println(" 수정실패 설마 이문구도안보이는거냐? ");
		} else {
			System.out.println(" 게시글 수정이 완료되었습니다. ");
		}
		return "redirect:/cmnt1.do";
	}
	
	@RequestMapping(value="/cmnt1Delete.do")
	public String deleteBoard(BoardVO vo) throws Exception {
		
		// ret = 1 or 0 
		int ret =boardService.deleteBoard(vo);
		
		if(ret == 0 ) {
			System.out.println(" 게시글 삭제실패 설마 이 문구조차안뜨는건아니겟지");
		} else {
			System.out.println(" 게시글이 삭제되었습니다. ");
		}
		
		return "redirect:/cmnt1.do";
		
	}

/*	
	@RequestMapping(value="/reBoardWrite.do")
	public String reBoardWrite() {
		
		return "board/reBoardWrite";
		
	}*/
	
	@RequestMapping(value="/recmnt1ReWrite.do")
	public String reBoardReWrite(BoardVO vo, ModelMap model) throws Exception {
		
		
		model.addAttribute("unq",vo.getUnq());
		return "pg/cmnt1_Rewrite";
		
	}
	
	@RequestMapping(value="/recmnt1WriteSave.do")
	@ResponseBody
	public Map<String,Object> insertReBoard (
			HttpServletResponse response,
			BoardVO vo) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		String result = "";
		 //fid 생성
		int fid = boardService.selectReBoardFid();
		vo.setFid(fid);
		
		// 저장 
		result = boardService.insertReBoard(vo);
		
		if(result==null) result = "ok";
		map.put("result",result);
		
		return map;
	}
	
	@RequestMapping(value="/recmnt1ReWriteSave.do")
	@ResponseBody
	public Map<String,Object> insertReBoardReply (
			HttpServletResponse response,
			BoardVO vo) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		
		String result = "";
		
		// thread 생성 
		String thread = boardService.selectReBoardThread(vo);
		
		String myThread = "";
		
		int chk = thread.indexOf("@");  // search : 인덱스 번호
		
		// @aa
		if(chk > -1) {
			// 첫번째 댓글인 상황
			String a = thread.replace("@","");  // 치환
			myThread = a + "a";
			
		} else {
			// aad  -> aa (0,2)
			String a = thread.substring(thread.length()-1,thread.length());
			char b = a.charAt(0);  // search : 한 글자
			b++;
			String c = thread.substring(0,thread.length()-1);
			myThread = c+b;
		}
		vo.setThread(myThread);
		
		// 저장 
		result = boardService.insertReBoardReply(vo);
		
		if(result==null)  result = "ok";
		map.put("result", result);

		return map;
	}
	
	
	
	
	
	
	
	@RequestMapping(value="/cmnt2.do")
	public String cmnt2() {	
		return "pg/page_cmnt2";
	}
	@RequestMapping(value="/cmnt3.do")
	public String cmnt3() {	
		return "pg/page_cmnt3";
	}
	@RequestMapping(value="/cmnt4.do")
	public String cmnt4() {	
		return "pg/page_cmnt4";
	}
	
	
	
	
}
