package Account;

public class Account {
  private String AccountID;
  private String AccountType;
  private String AccountAmount;

  public String getAccountID() {
    return AccountID;
  }

  public void setAccountID(String accountID) {
    AccountID = accountID;
  }

  public String getAccountType() {
    return AccountType;
  }

  public void setAccountType(String accountType) {
    AccountType = accountType;
  }

  public String getAccountAmount() {
    return AccountAmount;
  }

  public void setAccountAmount(String accountAmount) {
    AccountAmount = accountAmount;
  }
}
