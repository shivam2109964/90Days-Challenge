import 'dart:io';

void main() {
  print("Deposit a money");
  int money = int.parse(stdin.readLineSync()!);

  try{
    DepositAmount(money);
  }catch (e){
    print((e as DepositErrorException).DepositErrorMessage());
  }
}

class DepositErrorException implements Exception {
  String DepositErrorMessage() {
    return "Please enter a valid value";
  }
}

void DepositAmount(int amount) {
  if (amount < 0) {
    throw new DepositErrorException();
  } else {
    print("You got it");
  }
}
