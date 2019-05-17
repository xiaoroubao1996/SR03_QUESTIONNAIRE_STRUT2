package Controller;

import Helper.AccountHelper;
import Model.Constant;
import Model.DAOUser;
import Model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("User email");
        String password = req.getParameter("User password");
        if (AccountHelper.isAuthentic(email, password)) {
            User user = AccountHelper.getUserInformationByEmail(email);
            if (user.getPassword().equals(password)) {
                req.getSession(false).invalidate();
                HttpSession session = req.getSession(true);
                session.setAttribute("id", user.getId());
                session.setAttribute("email", user.getEmail());
                session.setAttribute("firstName", user.getFirstName());
                session.setAttribute("lastName", user.getLastName());
                session.setAttribute("type", user.getType());

                resp.sendRedirect("/index");
            } else {
                resp.sendRedirect("/error");
            }
        } else {
            resp.sendRedirect("/error");
        }

    }
}
