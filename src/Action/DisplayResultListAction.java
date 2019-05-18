package Action;

import Helper.AccountHelper;
import Model.Constant;
import Model.DAOFactory;
import Model.Result;
import com.opensymphony.xwork2.ActionContext;

import java.util.ArrayList;

public class DisplayResultListAction {
    ArrayList<Result> resultList;


    public String execute() {
        if (AccountHelper.isAdmin((Constant.USERTYPE) ActionContext.getContext().getSession().get("type"))) {
            resultList = DAOFactory.getDAOResult().selectAll();
        } else {
            resultList = DAOFactory.getDAOResult().selectByTraineeID((Integer) ActionContext.getContext().getSession().get("id"));
        }


        return "success";
    }

    public ArrayList<Result> getResultList() {
        return resultList;
    }

    public void setResultList(ArrayList<Result> resultList) {
        this.resultList = resultList;
    }
}
