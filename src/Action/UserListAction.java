package Action;

import Model.DAOFactory;
import Model.User;

import java.util.ArrayList;

public class UserListAction {
    private ArrayList<User> userList;

    public ArrayList<User> getUserList() {
        return userList;
    }

    public void setUserList(ArrayList<User> userList) {
        this.userList = userList;
    }

    public String execute() throws Exception {
        userList = DAOFactory.getDAOUser().selectAll();
        return "success";
    }
}