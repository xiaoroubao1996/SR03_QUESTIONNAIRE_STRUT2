package Action;

import Model.DAOFactory;
import Model.DAOResult;
import org.json.JSONArray;
import org.json.JSONObject;

public class DisplayResultDetailAction {
    //input data
    int resultId;
    int index;

    //output data
    String questionText;
    String answerText1;
    String answerText2;
    String answerText3;
    String answerText4;
    int correction;
    int choice;

    boolean lastQuestion;

    public String execute() {

        JSONObject json = new JSONObject(DAOFactory.getDAOResult().selectByID(resultId).getJson());
        JSONArray questions = json.optJSONArray("question");
        JSONObject question = questions.getJSONObject(index);

        questionText = question.getString("text");
        choice = question.getInt("choice");

        JSONArray answers = question.getJSONArray("answer");
        setAnswerText1(answers.getJSONObject(0).getString("text"));
        setAnswerText2(answers.getJSONObject(1).getString("text"));
        setAnswerText3(answers.getJSONObject(2).getString("text"));
        setAnswerText4(answers.getJSONObject(3).getString("text"));

        if (answers.getJSONObject(0).getBoolean("correction") == true) {
            correction = 0;
        }
        if (answers.getJSONObject(1).getBoolean("correction") == true) {
            correction = 1;
        }
        if (answers.getJSONObject(2).getBoolean("correction") == true) {
            correction = 2;
        }
        if (answers.getJSONObject(3).getBoolean("correction") == true) {
            correction = 3;
        }

        lastQuestion=false;
        index++;

        if (index == (json.getJSONArray("question").length())) {
            lastQuestion=true;
        }
        return "success";


    }


    public int getResultId() {
        return resultId;
    }

    public void setResultId(int resultId) {
        this.resultId = resultId;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getQuestionText() {
        return questionText;
    }

    public void setQuestionText(String questionText) {
        this.questionText = questionText;
    }

    public String getAnswerText1() {
        return answerText1;
    }

    public void setAnswerText1(String answerText1) {
        this.answerText1 = answerText1;
    }

    public String getAnswerText2() {
        return answerText2;
    }

    public void setAnswerText2(String answerText2) {
        this.answerText2 = answerText2;
    }

    public String getAnswerText3() {
        return answerText3;
    }

    public void setAnswerText3(String answerText3) {
        this.answerText3 = answerText3;
    }

    public String getAnswerText4() {
        return answerText4;
    }

    public void setAnswerText4(String answerText4) {
        this.answerText4 = answerText4;
    }

    public int getCorrection() {
        return correction;
    }

    public void setCorrection(int correction) {
        this.correction = correction;
    }

    public int getChoice() {
        return choice;
    }

    public void setChoice(int choice) {
        this.choice = choice;

    }

    public boolean isLastQuestion() {
        return lastQuestion;
    }

    public void setLastQuestion(boolean lastQuestion) {
        this.lastQuestion = lastQuestion;
    }
}
