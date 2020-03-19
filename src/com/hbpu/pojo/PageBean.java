package com.hbpu.pojo;

import java.util.List;

/**
 * @author lujun
 * @create 2019-08-02 10:09
 * 分页工具类，封装分页显示数据的列表页面上的信息
 */
public class PageBean<T> {
    //页号，即第几页
    private Integer pageNum;
    //总页数
    private Integer totalPage;
    //每页条数，默认每页5条
    private Integer pageSize=2;
    //当前页数据的集合,从数据库中查询得到的
    private List<T> list;
    //总记录数,即共多少条,从数据库中查询得到的
    private Integer totalCount;

    public Integer getPageNum() {
        return pageNum;
    }

    public void setPageNum(Integer pageNum) {
        this.pageNum = pageNum;
    }
    //获取总页数
    public Integer getTotalPage() {
       // this.totalPage=this.totalCount%this.pageSize==0?this.totalCount/this.pageSize:this.totalCount/this.pageSize+1;

        this.totalPage= (int)Math.ceil ((double)this.totalCount/this.pageSize);
        return totalPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }
}
