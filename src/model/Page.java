package model;

public class Page {
	int sum;
    int start=0;
    //一页多少条
    int count = 6;
    int last = 0;
    //当前页数
    int pages=1;
	public int getStart() {
        return start;
    }
    public void setStart(int start) {
        this.start = start;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    public int getLast() {
        return last;
    }
    public void setLast(int last) {
        this.last = last;
    }
	public int getPages() {
		return pages;
	}
	public void setPages(int pages) {
		this.pages = pages;
	}
	
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public void totalPages(int total) {
        // 假设总数是50，是能够被5整除的，那么最后一页的开始就是45
        if (0 == total % count) {
            last = total/count;
        // 假设总数是51，不能够被5整除的，那么最后一页的开始就是50
        }else {
        	last = (total/count)+1;
        }
    }
}