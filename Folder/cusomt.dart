void main() {
  Student s1 = Student(97, "Shivam");
  s1.totalPercentage = 400;
  print(s1.id);
  print(s1.name);
  print(s1.totalPercentage);
}

class Student {
  int id;
  String name;
  double percent = 0;

  Student(this.id, this.name);

  void set totalPercentage(double marks) => percent = marks / 500 * 100;

  double get totalPercentage => percent;
  
}
