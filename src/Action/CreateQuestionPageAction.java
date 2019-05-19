package Action;

public class CreateQuestionPageAction {
    int questionnaireId;

    public String execute(){
        return "success";
    }

    public int getQuestionnaireId() {
        return questionnaireId;
    }

    public void setQuestionnaireId(int questionnaireId) {
        this.questionnaireId = questionnaireId;
    }
}
