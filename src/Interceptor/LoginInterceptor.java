package Interceptor;

import Action.LoginAction;
import Helper.AccountHelper;
import Model.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.util.Map;

public class LoginInterceptor extends AbstractInterceptor {

    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        HttpSession session = ServletActionContext.getRequest().getSession();
        String email = ((String[]) invocation.getInvocationContext().getParameters().get("email"))[0];
        String password = ((String[]) invocation.getInvocationContext().getParameters().get("password"))[0];

        LoginAction loginAction = (LoginAction) invocation.getAction();
        loginAction.setEmail(email);
        loginAction.setPassword(password);
//        loginAction.validate();
        if (AccountHelper.isAuthentic(email, password)) {
            User user = AccountHelper.getUserInformationByEmail(email);
            if (user.getPassword().equals(password)) {
                session.setAttribute("id", user.getId());
                session.setAttribute("email", user.getEmail());
                session.setAttribute("firstName", user.getFirstName());
                session.setAttribute("lastName", user.getLastName());
                session.setAttribute("type", user.getType());
            }
        }
        return invocation.invoke();
    }
}