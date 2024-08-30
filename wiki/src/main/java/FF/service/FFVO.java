package FF.service;

public class FFVO {
	private int nsunq;
	private int usrnum;
	private String nstitle;

	private String nscontent;
	private int nshit;
	private String nsdate;
	
/*	private String srchCond;
	private String srchWord;*/
	
	private String thread;
	private int fid;
	
	private int firstIdx;
	private int lastIdx;
	private int pageNo=0;
	
	
	
	
	public int getNsunq() {
		return nsunq;
	}
	public void setNsunq(int nsunq) {
		this.nsunq = nsunq;
	}
	public String getNstitle() {
		return nstitle;
	}
	public void setNstitle(String nstitle) {
		this.nstitle = nstitle;
	}
	public String getNscontent() {
		return nscontent;
	}
	public void setNscontent(String nscontent) {
		this.nscontent = nscontent;
	}
	public int getNshit() {
		return nshit;
	}
	public void setNshit(int nshit) {
		this.nshit = nshit;
	}
	public String getNsdate() {
		return nsdate;
	}
	public void setNsdate(String nsdate) {
		this.nsdate = nsdate;
	}
/*	public String getSrchCond() {
		return srchCond;
	}
	public void setSrchCond(String srchCond) {
		this.srchCond = srchCond;
	}
	public String getSrchWord() {
		return srchWord;
	}
	public void setSrchWord(String srchWord) {
		this.srchWord = srchWord;
	}*/
	public String getThread() {
		return thread;
	}
	public void setThread(String thread) {
		this.thread = thread;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getFirstIdx() {
		return firstIdx;
	}
	public void setFirstIdx(int firstIdx) {
		this.firstIdx = firstIdx;
	}
	public int getLastIdx() {
		return lastIdx;
	}
	public void setLastIdx(int lastIdx) {
		this.lastIdx = lastIdx;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getUsrnum() {
		return usrnum;
	}
	public void setUsrnum(int usrnum) {
		this.usrnum = usrnum;
	}
	
	
}
