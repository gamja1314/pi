package egovframework.example.sample.web;

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
public class BoardController {

	@Resource(name = "boardService")
	private BoardService boardService;
	
	/** MappingJackson2JsonView */
	@Resource(name = "jsonView")
	protected MappingJackson2JsonView jsonView;
	
	@RequestMapping(value="/boardWrite.do")
	public String boardWrite() {	
		return "board/boardWrite";
	}
	
	@RequestMapping(value="/boardWriteSave.do")
	public String insertBoard(BoardVO vo) throws Exception {
	
	vo.setHit(100);	
	// ret => 결과 값 ;; ok : null; fail : x 	
	String ret = boardService.insertBoard(vo);	
	return "redirect:/boardList.do";
		
	}
	@RequestMapping(value="/boardList.do")
	public String selectBoardList(BoardVO vo, ModelMap model) throws Exception {
		
		List<?> list = boardService.selectBoardList(vo);
	
		model.addAttribute("resultList",list);
		
		return "board/boardList";
		
	}
	
	
	@RequestMapping(value="/reBoardList.do")
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
		return "board/reBoardList";
	}
	
	
	
	@RequestMapping(value="/boardDetail.do")
	public String selectBoardDetail(BoardVO vo, ModelMap model) throws Exception {
		
		vo = boardService.selectBoardDetail(vo);
		
		System.out.println(vo.getUnq());
		System.out.println(vo.getTitle());
		System.out.println(vo.getPwd());
		System.out.println(vo.getName());
		System.out.println(vo.getContent());
		
		model.addAttribute("boardVO",vo);
		
		return "board/boardDetail";
	}
	
	@RequestMapping(value="/reBoardDetail.do")
	public String selectReBoardDetail(BoardVO vo, ModelMap model) throws Exception {
		
		vo = boardService.selectReBoardDetail(vo);
		model.addAttribute("boardVO",vo);
		
		return "board/reBoardDetail";
	}
	
	@RequestMapping(value="/boardDetailSave.do")
	public String updateBoard(BoardVO vo, ModelMap model) throws Exception {
		int ret = boardService.updateBoard(vo);
		
		if(ret== 0) {
			System.out.println(" >> 수정 처리 오류 (er) ");
		} else {
			System.out.println(" >> 수정 처리 완료 (ok)");
		}
		return "redirect:/boardList.do";
	}
	
	@RequestMapping(value="/boardDelete.do")
	public String deleteBoard(BoardVO vo) throws Exception {
		
		// ret = 1 or 0 
		int ret =boardService.deleteBoard(vo);
		
		if(ret == 0 ) {
			System.out.println(" >> 삭제 처리 오류 (er)");
		} else {
			System.out.println(" >> 삭제 처리 완료 (ok)");
		}
		
		return "redirect:/boardList.do";
		
	}
	
	@RequestMapping(value="/reBoardWrite.do")
	public String reBoardWrite() {
		
		return "board/reBoardWrite";
		
	}
	
	@RequestMapping(value="/reBoardReWrite.do")
	public String reBoardReWrite(BoardVO vo, ModelMap model) throws Exception {
		
		
		model.addAttribute("unq",vo.getUnq());
		return "board/reBoardReWrite";
		
	}
	
	@RequestMapping(value="/reBoardWriteSave.do")
	@ResponseBody
	public Map<String,Object> insertReBoard (
			HttpServletResponse response,
			BoardVO vo) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		String result = "";
		/* fid 생성*/
		int fid = boardService.selectReBoardFid();
		vo.setFid(fid);
		
		/* 저장 */
		result = boardService.insertReBoard(vo);
		
		if(result==null) result = "ok";
		map.put("result",result);
		
		return map;
	}
	
	@RequestMapping(value="/reBoardReWriteSave.do")
	@ResponseBody
	public Map<String,Object> insertReBoardReply (
			HttpServletResponse response,
			BoardVO vo) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		
		String result = "";
		
		/* thread 생성 */
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
		
		/* 저장 */
		result = boardService.insertReBoardReply(vo);
		
		if(result==null)  result = "ok";
		map.put("result", result);

		return map;
	}
	
	
	
	
	

}



