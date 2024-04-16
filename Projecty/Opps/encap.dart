class BankAccount {
  // Private property
  double _balance = 0.0;

  // Getter method to access private property
  double getBalance() {
    return _balance;
  }

  // Setter method to update private property
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
}

void main() {
  // Create an object of BankAccount
  BankAccount account = BankAccount();

  // Deposit some money
  account.deposit(100.0);

  // Get the balance
  print("Account balance: \$${account.getBalance()}");
}
