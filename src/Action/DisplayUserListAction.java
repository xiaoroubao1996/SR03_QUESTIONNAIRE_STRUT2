package Action;

import Model.DAOFactory;
import Model.User;

import java.util.ArrayList;

public class DisplayUserListAction{

    private ArrayList<User> userList;

    private Integer totalPage;

    private Integer currentPage;

    private String searchContent;

    public ArrayList<User> getUserList() {
        return userList;
    }

    public void setUserList(ArrayList<User> userList) {
        this.userList = userList;
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
    public String getSearchContent() {
        return searchContent;
    }

    public void setSearchContent(String searchContent) {
        this.searchContent = searchContent;
    }

    public String execute() throws Exception {
        if(searchContent == null)searchContent = "";
        if(currentPage == null)currentPage = 1;
        userList = DAOFactory.getDAOUser().selectBySearchContent(searchContent);
        pagination();
        return "success";
    }
    private void pagination(){
        if(userList.size()==0){
            totalPage=0;
            return;
        }
        totalPage=(int) Math.ceil((double)userList.size()/10);
        if(currentPage.equals(totalPage)){
            userList=new ArrayList<User>(userList.subList((currentPage-1)*10,userList.size()));
        }else{
            userList=new ArrayList<User>(userList.subList((currentPage-1)*10,currentPage*10));
        }
    }
}