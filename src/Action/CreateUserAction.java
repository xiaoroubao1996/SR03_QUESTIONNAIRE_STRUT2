package Action;

import Model.DAOFactory;
import Model.User;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import   com.sun.mail.util.MailLogger;

public class CreateUserAction {
    private User user;
    private String error;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }


    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String execute() throws Exception {
        try{
            sendTLSMail();
            DAOFactory.getDAOUser().add(user);
        }catch (SQLException se) {
            error = "Failure of Creation User";
            return "failure";
            }

        return "success";
    }

    private void sendTLSMail(){
        final String username = "chenyan.zhu0707@gmail.com";
        final String password = "zcy12341234";

        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS


        Session session = Session.getInstance(prop,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("from@gmail.com"));
            message.setRecipients(
                    Message.RecipientType.TO,
                    InternetAddress.parse(user.getEmail())
            );
            message.setSubject("Your account in questionnaire star");
            message.setText("Dear "+user.getFirstName()
                    + ",\n\n Please find your id and password in this email!\n\n" +
                    "email: "+user.getEmail()+
                    "\npassword: "+
                    user.getPassword()+
            "\n\nPlease login here: http://localhost:8080/");

            Transport.send(message);

            System.out.println("Done");

        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
