package Action;

import Helper.AccountHelper;
import Model.User;

public class LoginAction {

    //    private User user;
    private String email;
    private String password;
    public LoginAction() {
    }

//
//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String execute() throws Exception {
        if (AccountHelper.isAuthentic(email, password)) {
            return "success";
        }else{
            return "failure";
        }
    }

}
