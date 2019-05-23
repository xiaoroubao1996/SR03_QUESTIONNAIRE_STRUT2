package Action;

import Helper.AccountHelper;
import Model.User;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

    private String email;
    private String password;
    private String error;

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

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String execute() throws Exception {

        if (AccountHelper.isAuthentic(email, password)) {
            User user = AccountHelper.getUserInformationByEmail(email);
            if(AccountHelper.isActive(user)){
                return "success";
            }else{
                error = "User is inactive";
                return "failure";
            }
        }else{
            error = "Email or password is wrong";
            return "failure";
        }
    }


//
//    public void validate()
//    {
//        if (email.equals("")){
//            addFieldError("email","The email is required");
//        }
//        if (password.equals("")){
//            addFieldError("password","The password is required");
//        }
//    }
}
