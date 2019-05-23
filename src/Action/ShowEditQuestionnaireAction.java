package Action;

import Model.DAOFactory;
import Model.Questionnaire;
import Model.User;

public class ShowEditQuestionnaireAction {
    private Questionnaire questionnaire;
    private String questionnaireId;

    public Questionnaire getQuestionnaire() {
        return questionnaire;
    }

    public void setQuestionnaire(Questionnaire questionnaire) {
        this.questionnaire = questionnaire;
    }

    public String getQuestionnaireId() {
        return questionnaireId;
    }

    public void setQuestionnaireId(String questionnaireId) {
        this.questionnaireId = questionnaireId;
    }

    public String execute() throws Exception {
        questionnaire = DAOFactory.getDAOQuestionnaire().selectByID(Integer.parseInt(questionnaireId));
        return "success";
    }

}