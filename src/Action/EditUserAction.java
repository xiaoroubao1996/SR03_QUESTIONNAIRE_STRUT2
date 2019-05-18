package Action;

import Model.DAOFactory;
import Model.User;

import java.util.ArrayList;

public class EditUserAction {
    private User user;

    private ArrayList<User> userList;

    public ArrayList<User> getUserList() {
        return userList;
    }

    public void setUserList(ArrayList<User> userList) {
        this.userList = userList;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String execute() throws Exception {
        DAOFactory.getDAOUser().update(user);
        userList = DAOFactory.getDAOUser().selectAll();
        return "success";
    }
}
