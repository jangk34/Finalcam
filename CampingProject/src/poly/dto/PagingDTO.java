package poly.dto;

/**
 * @author
 * @version 1.1 페이징 DTO
 */
public class PagingDTO {
	private int totalcount; // 전체 게시물 개수
	private int pagenum; // 현재 페이지 번호
	private int contentnum=9; // 한 페이지에 몇개 표시할지
	private int startPage=1; // 현재 페이지 블록의 시작 페이지
	private int endPage; // 현재 페이지 블록의 마지막 페이지
	private boolean prev=false; // 이전 페이지로 가는 화살표
	private boolean next; // 다음 페이지로 가는 화살표
	private int currentblock; // 현재 페이지 블록
	private int lastblock; // 마지막 페이지 블록
	
	
	public void prevnext(int pagenum) {
		if (pagenum>0 && pagenum<6 ) { // 현재페이지가 첫번째블록안에있으면 이전페이지로 가는 화살표는 안보임, 다음페이지 보임 
			setPrev(false);  //    1 2 3 4 5->
			setNext(true);   
		}
		else if(getLastblock() == getCurrentblock()) { // 마지막 블록 = 현재 블록 -> 마지막 블록이니까 이전 화살표 안보임
			setPrev(true);  //    1 2 3 4 5->
			setNext(false);
		}
		else {
			setPrev(true);  //    1 2 3 4 5->  // 아니라면 이전 화살표 보임
			setNext(true);
		}
	}
	
	public int calcpage(int totalcount,int contentnum) { // 전체 페이지 수를 계산하는 함수
		
		//125 / 10 => 12.5
		//13페이지 
		
		//50 / 10  => 5
		//5페이지
		
		int totalpage = totalcount / contentnum;
		if (totalcount%contentnum>0) {
			totalpage++;
		}
		return totalpage;
	}
	
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	public int getPagenum() {
		return pagenum;
	}
	public void setPagenum(int pagenum) {
		this.pagenum = pagenum;
	}
	public int getContentnum() {
		return contentnum;
	}
	public void setContentnum(int contentnum) {
		this.contentnum = contentnum;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int currentblock) { //
		this.startPage = (currentblock*5-4);
		// 1블록 // 1 2 3 4 5             ex) <- 1 2 3 4 5 -> <- 6 7 8 9 10 ->
		// 2블록// 6 7 8 9 10
		// 3블록 // 11 12 13
		// 1번블록 끝페이지 5부터 4칸앞으로 오면 첫페이지 1 
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int getlastblock, int getcurrentblock) {
		if (getlastblock == getcurrentblock) {
			this.endPage = calcpage(getTotalcount(), getContentnum()); // 마지막블록
		}
		else {
			this.endPage =getStartPage()+4; // 마지막 블록이 아닌경우 => 5개일경우 +4
		}
	}
	
	
	
	public boolean isPrev() {
		return prev;
	}


	public void setPrev(boolean prev) {
		this.prev = prev;
	}


	public boolean isNext() {
		return next;
	}


	public void setNext(boolean next) {
		this.next = next;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	public int getCurrentblock() {
		return currentblock;
	}
	public void setCurrentblock(int pagenum) {
		//페이지 번호를 통해서 구한다
		//페이지 번호  / 페이지 그룹 안의 페이지 개수
		//1페이지 1 /5  => 0.2 = 0 ---> 0 + 1 = 1블록 (페이지 블록)
		//3페이지 3 /5  => 0.xx = 0 ---> 0 + 1 = 1블록 (페이지 블로)
		//8페이지 8 /5  => 1.6 = 1 ---> 1 + 1 = 2블록 (페이지 블록)
		this.currentblock = pagenum/5; // 한블록당 5페이지씩 구해짐
		if (pagenum%5>0) {
			this.currentblock++;
		}
	}
	public int getLastblock() {
		return lastblock;
	}
	public void setLastblock(int lastblock) {
		//10 , 5 -> 10 * 5 = 50개
		//125(전체글 갯수) / 50개씩 1블록 
		//페이지블록 3
		this.lastblock = totalcount / (5*this.contentnum);
		if (totalcount %(5*this.contentnum)>0) {
			this.lastblock++;
		}
	}

}