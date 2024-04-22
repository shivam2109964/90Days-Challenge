class Person {
  String name;
  int age;

  Person(this.name, this.age);

  Person.withName(this.name) : age = 0;

  Person.withAge(this.age) : name = 'Unknown';

  Person.withNameAndAge(this.name, this.age);

  void display() {
    print("$name , $age");
  }
}

void main() {
  var person1 = Person("Alice", 21);
  person1.display();

  var person2 = Person.withAge(22);
  person2.display();

  var person3 = Person.withName("Shivam");
  person3.display();

  var person4 = Person.withNameAndAge("Golu", 23);
  person4.display();
  
}
