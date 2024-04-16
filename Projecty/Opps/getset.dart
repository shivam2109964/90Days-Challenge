class Student {
  late String name; // Public property

  // Custom getter for 'stud_name'
  String get stud_name {
    return name;
  }
}

void main() {
  Student s1 = Student();
  s1.name = 'Nitin'; // Setting the value
  print(s1.stud_name); // Accessing via getter

  var s2 = Student();
  s2.name = "Shivam";
  print(s2.stud_name);
}
