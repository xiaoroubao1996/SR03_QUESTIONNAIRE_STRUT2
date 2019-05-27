package Action;

import Model.DAOFactory;
import Model.Question;
import Model.User;

import java.util.ArrayList;

public class DisplayQuestionListAction {
    private ArrayList<Question> questionList;
    private String questionnaireId;
    private Integer totalPage;
    private Integer currentPage;
    private String questionnaireSubject;

    public String execute() throws Exception {
        if(currentPage == null) currentPage = 1;
        questionList = DAOFactory.getDAOQuestion().selectByQuestionnaireID(Integer.valueOf(questionnaireId));
        questionnaireSubject = DAOFactory.getDAOQuestionnaire().selectByID(Integer.valueOf(questionnaireId)).getSubject();
        pagination();
        return "success";
    }
    private void pagination(){
        if(questionList.size()==0){
            totalPage=0;
            return;
        }
        totalPage=(int) Math.ceil((double)questionList.size()/10);
        if(currentPage.equals(totalPage)){
            questionList=new ArrayList<Question>(questionList.subList((currentPage-1)*10,questionList.size()));
        }else{
            questionList=new ArrayList<Question>(questionList.subList((currentPage-1)*10,currentPage*10));
        }
    }
    public ArrayList<Question> getQuestionList() {
        return questionList;
    }

    public void setQuestionList(ArrayList<Question> questionList) {
        this.questionList = questionList;
    }

    public String getQuestionnaireId() {
        return questionnaireId;
    }

    public void setQuestionnaireId(String questionnaireId) {
        this.questionnaireId = questionnaireId;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public String getQuestionnaireSubject() {
        return questionnaireSubject;
    }

    public void setQuestionnaireSubject(String questionnaireSubject) {
        this.questionnaireSubject = questionnaireSubject;
    }
}
