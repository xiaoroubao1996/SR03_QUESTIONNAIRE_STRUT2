package Action;

import Helper.SortHelper;
import Model.*;
import com.opensymphony.xwork2.ActionContext;
import org.apache.commons.lang3.StringEscapeUtils;
import org.json.JSONArray;
import org.json.JSONObject;

import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Map;

public class DisplayQuestionnaireAction {
    //input data
    int questionnaireId;
    int index;
    String choice;


    //output data
    String questionText;
    String answerText1;
    String answerText2;
    String answerText3;
    String answerText4;


    //output result page
    boolean lastQuestion;
    Integer score;
    String subject;


    //transfer data
    JSONObject json;
    String jsonString;


    public String execute() {
        lastQuestion = false;
        if (index == 0) {
            //first question
            json = generateJson();
        } else {
            json = new JSONObject(StringEscapeUtils.unescapeJson(jsonString));
            saveChoice();
        }


        if (index == (json.getJSONArray("question").length())) {
            //last question
            lastQuestion = true;
            calculateResult();
            writeResultIntoDB();
            subject=json.getJSONObject("questionnaire").getString("subject");
            return "finish";
        } else {
            getQuestion(index);
            jsonString = json.toString();
            index++;
            return "success";
        }
    }

    private void writeResultIntoDB() {
        DAOFactory.getDAOResult().add(
                new Result(
                        score,
                        (Integer) (ActionContext.getContext().getSession().get("id")),
                        json.toString()
                )
        );
    }

    private void calculateResult() {
        JSONArray questions = json.getJSONArray("question");
        int rightQuestion = 0;
        int totalQuestion = questions.length();
        for (int i = 0; i < totalQuestion; i++) {
            String choice = questions.getJSONObject(i).getString("choice");
            if (choice != null) {
                if (questions.getJSONObject(i).getJSONArray("answer").getJSONObject(Integer.valueOf(choice)).getBoolean("correction") == true) {
                    rightQuestion++;
                }
            }
        }
        score = 100*rightQuestion / totalQuestion;
    }

    private void saveChoice() {
        JSONArray questions = json.getJSONArray("question");
        JSONObject currentQuestion = questions.getJSONObject(index - 1);
        currentQuestion.put("choice", choice);
    }

    private JSONObject generateJson() {
        JSONObject Json = new JSONObject();
        JSONObject questionnaireJson = new JSONObject();
        Questionnaire questionnaire = DAOFactory.getDAOQuestionnaire().selectByID(questionnaireId);
        questionnaireJson.put("id", questionnaire.getId());
        questionnaireJson.put("subject", questionnaire.getSubject());

        Json.put("questionnaire", questionnaireJson);

        //set questionList
        JSONArray questionListJson = new JSONArray();
        ArrayList<Question> questionList = new ArrayList();
        DAOFactory.getDAOQuestion().selectByQuestionnaireID(questionnaireId)
                .forEach(question -> {
                            if (question.getStatus() == Constant.STATUS.ACTIVE) {
                                questionList.add(question);
                            }
                        }
                );
        questionList.forEach(question -> {
            ArrayList<Answer> answerList = new ArrayList();
            DAOFactory.getDAOAnswer()
                    .selectByQuestionID(question.getId())
                    .forEach(answer -> {
                        if (answer.getStatus() == Constant.STATUS.ACTIVE) {
                            answerList.add(answer);
                        }
                    });
            question.setAnswers(SortHelper.sortAnswers(answerList));
        });

        SortHelper.sortQuestion(questionList).forEach(question -> {
            JSONObject questionJson = new JSONObject();
            questionJson.put("id", question.getId());
            questionJson.put("text", question.getText());
            questionJson.put("status", question.getStatus().toString());

            //setanswer
            JSONArray answerListJson = new JSONArray();
            question.getAnswers().forEach(answer -> {
                JSONObject answerJson = new JSONObject();
                answerJson.put("id", answer.getId());
                answerJson.put("text", answer.getText());
                answerJson.put("correction", answer.getCorrection());
                answerListJson.put(answerJson);
            });
            questionJson.put("answer", answerListJson);
            questionListJson.put(questionJson);
        });
        Json.put("question", questionListJson);
        return Json;
    }

    private void getQuestion(int index) {
        JSONArray questions = json.getJSONArray("question");
        JSONObject currentQuestion = questions.getJSONObject(index);
        setQuestionText(currentQuestion.getString("text"));
        JSONArray answers = currentQuestion.getJSONArray("answer");
        setAnswerText1(answers.getJSONObject(0).getString("text"));
        setAnswerText2(answers.getJSONObject(1).getString("text"));
        setAnswerText3(answers.getJSONObject(2).getString("text"));
        setAnswerText4(answers.getJSONObject(3).getString("text"));
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

    public JSONObject getJson() {
        return json;
    }

    public void setJson(JSONObject json) {
        this.json = json;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public String getChoice() {
        return choice;
    }

    public void setChoice(String choice) {
        this.choice = choice;
    }

    public String getJsonString() {
        return jsonString;
    }

    public void setJsonString(String jsonString) {
        this.jsonString = jsonString;
    }

    public boolean isLastQuestion() {
        return lastQuestion;
    }

    public void setLastQuestion(boolean lastQuestion) {
        this.lastQuestion = lastQuestion;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
}
