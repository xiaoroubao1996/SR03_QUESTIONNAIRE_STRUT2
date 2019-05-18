package Action;

import Model.DAOFactory;
import Model.User;

import java.util.ArrayList;

public class EditUserAction {
    private User user;
    private String userId;


    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String execute() throws Exception {
        user = DAOFactory.getDAOUser().selectByID(Integer.parseInt(userId));
        return "success";
    }
}