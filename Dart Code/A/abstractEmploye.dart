import 'dart:io';

abstract class Employee {
  int calculateSalary(int totalhour);
  void displayDetails();
}

class HourlyEmployee extends Employee {
  String name;
  int totalhour;
  HourlyEmployee(this.name, this.totalhour);

  @override
  int calculateSalary(int totalhour) {
    int oneHourSalary = 110;
    return totalhour * oneHourSalary;
  }

  @override
  void displayDetails() {
    name = this.name;
    int totalSalary = calculateSalary(totalhour);
    print("Employe name is $name");
    print("Total Salary is $totalSalary in $totalhour");
  }
}

class SalariedEmployee extends Employee {
  String name;
  int months;

  SalariedEmployee(this.name, this.months);

  @override
  int calculateSalary(int months) {
    int oneMonths = 10000;
    return months * oneMonths;
  }

  @override
  void displayDetails() {
    name = this.name;
    int totalSalary = calculateSalary(months);

    print("Employe name is $name");
    print("Total Salary is $totalSalary in $months");
  }
}

void main() {
  int choice = 0;

  print("Enter your choice");
  print("1 for hourly Employe");
  print("2 for Monthly Employe");
  choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      print("Enter the name of the Employe");
      String name = stdin.readLineSync()!;

      print("Enter the total hour he or she work");
      int totalhour = int.parse(stdin.readLineSync()!);
      final hourEmp = HourlyEmployee(name, totalhour);
      hourEmp.displayDetails();
      print("Enter your choice again");
      choice = int.parse(stdin.readLineSync()!);
      if (choice != 2 || choice != 1) {
        break;
      }

    case 2:
      print("Enter the name of Employe");
      String name = stdin.readLineSync()!;

      print("Enter the total months");
      int months = int.parse(stdin.readLineSync()!);
      final salariedEmp = SalariedEmployee(name, months);
      salariedEmp.displayDetails();
      print("Enter your choice again");
      choice = int.parse(stdin.readLineSync()!);
      if (choice != 2 || choice != 1) {
        break;
      }
  }
}
