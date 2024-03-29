package Helper;
import Model.DAOFactory;
import Model.Question;

import java.util.ArrayList;

public class QuestionHelper {
    public static Question getLastQuestionByQuestionnaireId(Integer questionnaireId){
        ArrayList<Question> questions = DAOFactory.getDAOQuestion().selectByQuestionnaireID(questionnaireId);
        questions = SortHelper.sortQuestion(questions);
        if(questions.size()!=0) {
            Question lastQuestion = questions.get(questions.size() - 1);
            return lastQuestion;

        }else{
            return null;
        }
    }
}
