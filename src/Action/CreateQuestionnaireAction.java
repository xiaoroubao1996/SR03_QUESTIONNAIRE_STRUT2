package Action;

import Helper.AccountHelper;
import Model.DAOFactory;
import Model.DAOQuestionnaire;
import Model.Questionnaire;

public class CreateQuestionnaireAction {
    private String subject;

    public String execute() {
        if (subject!=null) {
            if(DAOFactory.getDAOQuestionnaire().selectBySubject(subject)==null) {
                Questionnaire newQuestionnaire = new Questionnaire(subject);
                DAOFactory.getDAOQuestionnaire().add(newQuestionnaire);
                return "success";
            }else{
                return "error";
            }
        }else{
            return "error";
        }
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
}
