package spacebook.admin.util;

public class Pagination {
	static final int PAGESIZE = 10 ;
	static final int PAGEBLOCK = 10; 
	public int pageNumber = 0;
	public int articleCount = 0;
	public int pageCount =0;
	public int result = 0;
	public int startPage = 0;
	public int endPage = 0;
	public Pagination() {
	}
	public int getPageNumber() {
		return pageNumber;
	}


	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}


	public int getArticleCount() {
		return articleCount;
	}


	public void setArticleCount(int articleCount) {
		this.articleCount = articleCount;
	}

	public int getPageCount() {
		return pageCount;
	}


	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}


	public int getResult() {
		return result;
	}


	public void setResult(int result) {
		this.result = result;
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public Pagination(int pageNumber, int articleCount) {
		this.pageNumber = pageNumber;
		this.articleCount = articleCount;
		this.pageCount = articleCount/PAGESIZE + ( articleCount % PAGESIZE == 0 ? 0 : 1);
		this.result = pageNumber / 10;
		this.startPage =  result * 10 + 1;
		this.endPage = startPage + PAGEBLOCK-1;
		if(endPage > pageCount) {
			this.endPage = pageCount;
		}
		if(pageNumber % PAGESIZE ==0) {
			this.startPage =  pageNumber - 10 + 1;
			this.endPage = pageNumber;
		}
	}

	@Override
	public String toString() {
		return "Pagination [pageNumber=" + pageNumber + ", articleCount=" + articleCount 
				+ ", pageCount=" + pageCount + ", result=" + result + ", startPage=" + startPage + ", endPage="
				+ endPage + "]";
	}
}
