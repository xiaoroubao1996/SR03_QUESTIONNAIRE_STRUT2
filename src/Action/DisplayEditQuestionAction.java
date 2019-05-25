package Action;

import Helper.SortHelper;
import Model.Answer;
import Model.DAOFactory;
import Model.Question;
import Model.Questionnaire;

import java.util.ArrayList;

public class DisplayEditQuestionAction {
    private Integer questionId;

    private Integer questionnaireId;

    private String questionText;
    private String answer1;
    private String answer2;
    private String answer3;
    private String answer4;
    private String correction;

    public String execute() throws Exception {
        Question question=DAOFactory.getDAOQuestion().selectByID(questionId);
        questionText=question.getText();
        ArrayList<Answer> answers=DAOFactory.getDAOAnswer().selectByQuestionID(questionId);
        answer1=answers.get(0).getText();
        answer2=answers.get(1).getText();
        answer3=answers.get(2).getText();
        answer4=answers.get(3).getText();
        for(int i=0;i<4;i++) {
            if (answers.get(i).getCorrection()) {
                correction = String.valueOf(i);
            }
        }
        return "success";
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getQuestionnaireId() {
        return questionnaireId;
    }

    public void setQuestionnaireId(Integer questionnaireId) {
        this.questionnaireId = questionnaireId;
    }

    public String getQuestionText() {
        return questionText;
    }

    public void setQuestionText(String questionText) {
        this.questionText = questionText;
    }

    public String getAnswer1() {
        return answer1;
    }

    public void setAnswer1(String answer1) {
        this.answer1 = answer1;
    }

    public String getAnswer2() {
        return answer2;
    }

    public void setAnswer2(String answer2) {
        this.answer2 = answer2;
    }

    public String getAnswer3() {
        return answer3;
    }

    public void setAnswer3(String answer3) {
        this.answer3 = answer3;
    }

    public String getAnswer4() {
        return answer4;
    }

    public void setAnswer4(String answer4) {
        this.answer4 = answer4;
    }

    public String getCorrection() {
        return correction;
    }

    public void setCorrection(String correction) {
        this.correction = correction;
    }
}
