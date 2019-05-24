package Action;

import Model.DAOFactory;
import Model.User;

import java.util.ArrayList;

public class DisplayUserListAction {
    private ArrayList<User> userList;

    private String searchContent;

    public ArrayList<User> getUserList() {
        return userList;
    }

    public void setUserList(ArrayList<User> userList) {
        this.userList = userList;
    }

    public String getSearchContent() {
        return searchContent;
    }

    public void setSearchContent(String searchContent) {
        this.searchContent = searchContent;
    }

    public String execute() throws Exception {
        userList = DAOFactory.getDAOUser().selectAll();
        return "success";
    }

    public String search() throws Exception {
        userList = DAOFactory.getDAOUser().selectBySearchContent(searchContent);
        return "success";
    }
}