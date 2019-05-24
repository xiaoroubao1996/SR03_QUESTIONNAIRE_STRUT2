package Action;

import Helper.AccountHelper;
import Model.DAOFactory;
import Model.Question;
import Model.Questionnaire;
import Model.Result;
import com.opensymphony.xwork2.ActionContext;

import java.util.ArrayList;
import java.util.Map;

public class DisplayQuestionnaireListAction {
    private ArrayList<Questionnaire> questionnaireList;

    private String searchContent;

    public ArrayList<Questionnaire> getQuestionnaireList() {
        return questionnaireList;
    }

    private Integer totalPage;

    private Integer currentPage;

    public void setQuestionnaireList(ArrayList<Questionnaire> questionnaireList) {
        this.questionnaireList = questionnaireList;
    }

    public String getSearchContent() {
        return searchContent;
    }

    public void setSearchContent(String searchContent) {
        this.searchContent = searchContent;
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
    
    public String execute() {
        Map session = (Map)ActionContext.getContext().get("session");
        String type =session.get("type").toString();

        if(AccountHelper.isAdmin(type)){
            questionnaireList = DAOFactory.getDAOQuestionnaire().selectBySearchContent(searchContent);
        }else {
            questionnaireList=new ArrayList<>();
            DAOFactory.getDAOQuestionnaire().selectBySearchContent(searchContent).forEach(questionnaire -> {
                if(AccountHelper.isActive(questionnaire.getStatus().toString())) {
                    questionnaireList.add(questionnaire);
                }
            });
        }
        pagination();
        return "success";
    }

    private void pagination(){
        if(questionnaireList.size()==0){
            totalPage=0;
            return;
        }
        totalPage=(int) Math.ceil((double)questionnaireList.size()/10);
        if(currentPage.equals(totalPage)){
            questionnaireList=new ArrayList<Questionnaire>(questionnaireList.subList((currentPage-1)*10,questionnaireList.size()));
        }else{
            questionnaireList=new ArrayList<Questionnaire>(questionnaireList.subList((currentPage-1)*10,currentPage*10));
        }
    }
}
