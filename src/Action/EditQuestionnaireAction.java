package Action;

import Model.DAOFactory;
import Model.Questionnaire;

import java.util.ArrayList;

public class EditQuestionnaireAction {
    private Questionnaire questionnaire;
    private ArrayList<Questionnaire> questionnaireList;

    public Questionnaire getQuestionnaire() {
        return questionnaire;
    }

    public void setQuestionnaire(Questionnaire questionnaire) {
        this.questionnaire = questionnaire;
    }

    public ArrayList<Questionnaire> getQuestionnaireList() {
        return questionnaireList;
    }

    public void setQuestionnaireList(ArrayList<Questionnaire> questionnaireList) {
        this.questionnaireList = questionnaireList;
    }
    public String execute() throws Exception {
        DAOFactory.getDAOQuestionnaire().update(questionnaire);
        questionnaireList = DAOFactory.getDAOQuestionnaire().selectAll();
        return "success";
    }
}
