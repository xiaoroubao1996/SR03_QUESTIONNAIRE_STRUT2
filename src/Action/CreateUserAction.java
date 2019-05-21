package Action;

import Model.DAOFactory;
import Model.User;

import java.sql.SQLException;
import java.util.ArrayList;

public class CreateUserAction {
    private User user;
    private String error;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }


    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String execute() throws Exception {
        try{
            DAOFactory.getDAOUser().add(user);
        }catch (SQLException se) {
            error = "Failure of Creation User";
            return "failure";
            }

        return "success";
    }
}
