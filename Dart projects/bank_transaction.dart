import 'dart:io';

class BankTransaction {
  double _balance = 500.0;

  void widhdrew(double amount) {
    if (amount <= 0) {
      print("Withdraw -> Amount must be greater than 0.");
    } else if (amount > _balance) {
      print("Withdraw -> You don't have enough money.");
    } else {
      _balance -= amount;
      print("Withdraw -> Your balance is: ${_balance.toStringAsFixed(2)}");
    }
  }

  void deposit(double amount) {
    if (amount <= 0) {
      print("Desposit -> Amount must be greater than 0.");
    } else {
      _balance += amount;
      print("Deposit -> Your balance is: ${_balance.toStringAsFixed(2)}");
    }
  }

  double getBalance() {
    return _balance;
  }
}

void main() {
  BankTransaction userAccount = BankTransaction();
  print("Enter the money you want to withdrawal: ");
  double amountWithdrawal = double.parse(stdin.readLineSync()!);
  print("Enter the money you want to deposit: ");
  double amountDeposit = double.parse(stdin.readLineSync()!);
  userAccount.deposit(amountDeposit);
  userAccount.widhdrew(amountWithdrawal);
}
