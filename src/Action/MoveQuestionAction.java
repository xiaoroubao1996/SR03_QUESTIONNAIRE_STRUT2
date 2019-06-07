package Action;

import Helper.SortHelper;
import Model.DAOFactory;
import Model.Question;

import java.util.ArrayList;

public class MoveQuestionAction {
    private int questionnaireId;
    private int questionId;
    ArrayList<Question> questions;

    public String moveDown() {
        getQuestionList();
        int index=getQuestionIndex(questionId);
        if(index==questions.size()-1){
            return "error";
        }else{
            swapQuestion(index,index+1);
            return "success";
        }
    }

    public String moveUp() {
        getQuestionList();
        int index=getQuestionIndex(questionId);
        if(index==0){
            return "error";
        }else{
            swapQuestion(index,index-1);
            return "success";
        }
    }

    private void getQuestionList(){
        questions= DAOFactory.getDAOQuestion().selectByQuestionnaireID(questionnaireId);
        SortHelper.sortQuestion(questions);

    }

    private int getQuestionIndex(int questionId ){
        for(int i=0;i<questions.size();i++){
            if(questions.get(i).getId().equals(questionId)){
                return i;
            }
        }
        return -1;
    }

    private void swapQuestion(int i,int j){
        Question question1=questions.get(i);
        Question question2=questions.get(j);

        int swaper=question1.getPosition();

        question1.setPosition(question2.getPosition());
        question2.setPosition(swaper);

        DAOFactory.getDAOQuestion().update(question1);
        DAOFactory.getDAOQuestion().update(question2);
    }

    public int getQuestionnaireId() {
        return questionnaireId;
    }

    public void setQuestionnaireId(int questionnaireId) {
        this.questionnaireId = questionnaireId;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }
}
