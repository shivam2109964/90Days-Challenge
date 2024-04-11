void main() {
  Student s1 = Student(97, "Shivam");
  s1.showNameid;
  s1.totalPercent = 400;
  print(s1.totalPercent);
  print("");
  Student s2 = Student(96, "shiva");
  s2.showNameid;
  s2.totalPercent = 450;
  print(s2.totalPercent);
}

class Student {
  int _id;
  String _name;
  double _percent = 0;

  Student(this._id, this._name);

  void set totalPercent(double marks) {
    _percent = marks / 500 * 100;
  }

  double get totalPercent => _percent;

  void set id(int id) {
    _id = id;
  }

  void set name(String name) {
    _name = name;
  }

  void get showNameid {
    print("The Id of Student is $_id");
    print("The name of Student is $_name");
  }
}
