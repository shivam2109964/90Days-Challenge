class Person {
  String name;
  String lastName;

  Person(this.name, this.lastName);
}

class Man {
  String name;
  String lastname;

  Man(this.name, {this.lastname = "Gupta"});

  Man copyWith({
    String? name,
    String? lastName,
  }) {
    return Man(
      name = name ?? this.name,
      lastname: lastName ?? this.lastname,
    );
  }
}

void main() {
  var person = Person("Shivam", "Gupta");
  var man = Man("Krishna", lastname: "Ji  ");

  print("Person Construcotr");
  print("${person.name} ${person.lastName}");
  print("");
  print("Man constructor");
  print("${man.name} ${man.lastname}");

  print("______________");
  var updateMan = man.copyWith(name: "Rahul", lastName: "Thather");
  print("${updateMan.name}, ${updateMan.lastname}");
}
