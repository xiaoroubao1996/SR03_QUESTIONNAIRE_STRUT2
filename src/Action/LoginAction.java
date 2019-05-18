package Action;

import Helper.AccountHelper;

public class LoginAction {

    private String email;
    private String password;


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
