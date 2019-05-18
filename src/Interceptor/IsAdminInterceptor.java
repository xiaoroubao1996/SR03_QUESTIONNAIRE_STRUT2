package Interceptor;

import Action.LoginAction;
import Helper.AccountHelper;
import Model.Constant;
import Model.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class IsAdminInterceptor extends AbstractInterceptor {

    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        HttpSession session = ServletActionContext.getRequest().getSession();
        if(session.getAttribute("type") != Constant.USERTYPE.ADMIN){
            return "authorizationFailure";
        }
        return invocation.invoke();
    }
}
