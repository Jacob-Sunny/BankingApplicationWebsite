package Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/Account",urlPatterns = {"/Account"} )
public class AccountServ extends HttpServlet {
  Account account = new Account();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String AccountType = request.getParameter("account");
      String AccountID = request.getParameter("accountID");
      String AccountAmount = request.getParameter("accountAmount");

      if(AccountType !="" && AccountAmount !="" && AccountType !=""){
        account.setAccountType(AccountType);
        account.setAccountID(AccountID);
        account.setAccountAmount(AccountAmount);
        response.sendRedirect("Account.jsp");
      }
      else{
        response.sendRedirect("index.jsp");
      }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
