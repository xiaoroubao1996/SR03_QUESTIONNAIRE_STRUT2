package Action;

import Model.DAOFactory;
import Model.Questionnaire;

import java.util.ArrayList;

public class DisplayQuestionnaireListAction {
    ArrayList<Questionnaire> questionnaireList;

    public String execute() {
        questionnaireList = DAOFactory.getDAOQuestionnaire().selectAll();
        return "success";
    }

    public ArrayList<Questionnaire> getQuestionnaireList() {
        return questionnaireList;
    }

    public void setQuestionnaireList(ArrayList<Questionnaire> questionnaireList) {
        this.questionnaireList = questionnaireList;
    }
}
