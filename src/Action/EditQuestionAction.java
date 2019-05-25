package Action;

import Model.Answer;
import Model.DAOFactory;
import Model.Question;

import java.util.ArrayList;

public class EditQuestionAction {
    private int questionnaireId;
    private int currentPage;
    private int questionId;

    private String questionText;

    private String answer1;
    private String answer2;
    private String answer3;
    private String answer4;
    private String correction;


    public String execute() throws Exception {

        Question question=DAOFactory.getDAOQuestion().selectByID(questionId);

        question.setText(questionText);

        ArrayList<Answer> answers=DAOFactory.getDAOAnswer().selectByQuestionID(questionId);
        answers.get(0).setText(answer1);
        answers.get(1).setText(answer2);
        answers.get(2).setText(answer3);
        answers.get(3).setText(answer4);

        answers.get(0).setCorrection(correction.equals("0"));
        answers.get(1).setCorrection(correction.equals("1"));
        answers.get(2).setCorrection(correction.equals("2"));
        answers.get(3).setCorrection(correction.equals("3"));

        DAOFactory.getDAOQuestion().update(question);
        DAOFactory.getDAOAnswer().update(answers.get(0));
        DAOFactory.getDAOAnswer().update(answers.get(1));
        DAOFactory.getDAOAnswer().update(answers.get(2));
        DAOFactory.getDAOAnswer().update(answers.get(3));

        return "success";
    }

    public int getQuestionnaireId() {
        return questionnaireId;
    }

    public void setQuestionnaireId(int questionnaireId) {
        this.questionnaireId = questionnaireId;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
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

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }
}
