class Customer {
  String name;
  String address;
  String emial;

  Customer(this.name, this.emial, this.address);
}

class Account {
  Customer customer;
  double balance;

  Account(this.customer, this.balance);

  //Creating a methods
  void deposit(double amount) {
    balance += amount;
    print("$amount deposited successfully. Current balance: $balance");
  }

  void withdrawalAmount(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("$amount withdrawal successfully. Current balance is: $balance");
    } else {
      print("Insufficient funds. Withdrawal failed");
    }
  }

  void displayBalance() {
    print("Current balance: $balance");
  }
}

class Transaction {
  Account? account;
  String? types;
  double? amount;
  DateTime? timestamp;

  Transaction(this.account, this.types, this.amount) {
    timestamp = DateTime.now();
  }

  void displayTransaction() {
    print("Type: $types, Amount: $amount, Timestamp: $timestamp");
  }
}

void main() {
  Customer customer = Customer("Shivam", "sg2109964@gmail.com", "Azamgarh");
  Account account = Account(customer, 1000);
  account.deposit(500);
  account.deposit(1500);
  account.deposit(1220);

  Transaction transaction = Transaction(account, "Deposit", 500);
  Transaction transaction1 = Transaction(account, "Witdrawal", 200);

  print("");
  account.displayBalance();
  transaction.displayTransaction();
  account.displayBalance();
  transaction1.displayTransaction();
  account.displayBalance();
}
