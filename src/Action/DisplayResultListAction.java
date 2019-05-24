package Action;

import Helper.AccountHelper;
import Model.Constant;
import Model.DAOFactory;
import Model.Result;
import Model.User;
import com.opensymphony.xwork2.ActionContext;

import java.util.ArrayList;

public class DisplayResultListAction {
    ArrayList<Result> resultList;
    private Integer totalPage;

    private Integer currentPage;


    public String execute() {
        if (AccountHelper.isAdmin((Constant.USERTYPE) ActionContext.getContext().getSession().get("type"))) {
            resultList = DAOFactory.getDAOResult().selectAll();
        } else {
            resultList = DAOFactory.getDAOResult().selectByTraineeID((Integer) ActionContext.getContext().getSession().get("id"));
        }
        pagination();



        return "success";
    }

    private void pagination(){
        if(resultList.size()==0){
            totalPage=0;
            return;
        }
        totalPage=(int) Math.ceil((double)resultList.size()/10);
        if(currentPage.equals(totalPage)){
            resultList=new ArrayList<Result>(resultList.subList((currentPage-1)*10,resultList.size()));
        }else{
            resultList=new ArrayList<Result>(resultList.subList((currentPage-1)*10,currentPage*10));
        }
    }

    public ArrayList<Result> getResultList() {
        return resultList;
    }

    public void setResultList(ArrayList<Result> resultList) {
        this.resultList = resultList;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }
}
