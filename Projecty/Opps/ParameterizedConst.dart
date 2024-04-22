class Person {
  String? name;
  int? age;

  //Parameterized Constructor
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

void main() {
  Person person = Person("Shivam", 22);
  print(person.name);
  print(person.age);
}
