package Action;

import Helper.AccountHelper;
import Model.DAOFactory;
import Model.Questionnaire;
import com.opensymphony.xwork2.ActionContext;

import java.util.ArrayList;
import java.util.Map;

public class DisplayQuestionnaireListAction {
    ArrayList<Questionnaire> questionnaireList;

    public String execute() {
        Map session = (Map)ActionContext.getContext().get("session");
        String type =session.get("type").toString();

        if(AccountHelper.isAdmin(type)){
            questionnaireList = DAOFactory.getDAOQuestionnaire().selectAll();
        }else {
            questionnaireList=new ArrayList<>();
            DAOFactory.getDAOQuestionnaire().selectAll().forEach(questionnaire -> {
                if(AccountHelper.isActive(questionnaire.getStatus().toString())) {
                    questionnaireList.add(questionnaire);
                }
            });
        }
        return "success";
    }

    public ArrayList<Questionnaire> getQuestionnaireList() {
        return questionnaireList;
    }

    public void setQuestionnaireList(ArrayList<Questionnaire> questionnaireList) {
        this.questionnaireList = questionnaireList;
    }
}
