class Employee {
  String name;
  int employeeId;

  Employee(this.name, this.employeeId);

  void displayInfo() {
    print("Name: $name, Employee Id: $employeeId");
  }
}

class Department {
  String name;
  List<Employee> employees;

  Department(this.name, this.employees);

  void displayEmployess() {
    print("Employe in $name Department");
    for (var employe in employees) {
      employe.displayInfo();
    }
  }
}

void main() {
  //Creating employee objects
  var emp1 = Employee("Shivam", 9120);
  var emp2 = Employee("Rahul", 8213);

  //Creating a list of employee
  var employessList = [emp1, emp2];

  //Creating a department of object and passing the list of employee
  var dept = Department("Strive", employessList);

  dept.displayEmployess();
}
