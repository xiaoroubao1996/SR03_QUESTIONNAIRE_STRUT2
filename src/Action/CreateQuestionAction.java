package Action;

import Helper.QuestionHelper;
import Model.Answer;
import Model.DAOFactory;
import Model.Question;
import Model.Questionnaire;

import java.util.HashMap;
import java.util.Map;

public class CreateQuestionAction {
    private int questionnaireId;
    private String questionText;
    private String answer1;
    private String answer2;
    private String answer3;
    private String answer4;
    private String correction;



    public String execute() {
//        try {
            Question lastQuestion = QuestionHelper.getLastQuestionByQuestionnaireId(questionnaireId);
            int index = lastQuestion!=null?lastQuestion.getPosition() + 1:0;
            Question newQuestion = new Question(
                    questionText,
                    index,
                    questionnaireId
            );
            DAOFactory.getDAOQuestion().add(newQuestion);
            lastQuestion = QuestionHelper.getLastQuestionByQuestionnaireId(questionnaireId);
            Answer newAnswer;
            newAnswer = new Answer(
                    answer1,
                    1,
                    correction == "0",
                    lastQuestion.getId()
            );
            DAOFactory.getDAOAnswer().add(newAnswer);
            newAnswer = new Answer(
                    answer2,
                    2,
                    correction == "1",
                    lastQuestion.getId()
            );
            DAOFactory.getDAOAnswer().add(newAnswer);
            newAnswer = new Answer(
                    answer3,
                    3,
                    correction == "2",
                    lastQuestion.getId()
            );
            DAOFactory.getDAOAnswer().add(newAnswer);
            newAnswer = new Answer(
                    answer4,
                    4,
                    correction == "3",
                    lastQuestion.getId()
            );
            DAOFactory.getDAOAnswer().add(newAnswer);
            return "success";
//        } catch (Exception e) {
//            return "error";
//        }

    }

    public int getQuestionnaireId() {
        return questionnaireId;
    }

    public void setQuestionnaireId(int questionnaireId) {
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
