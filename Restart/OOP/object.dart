class Cat {
  //These are the classes attribute
  //These are the classes Fields(state)

  String? name;
  String? gender;
  String? age;
  String? weight;
  String? color;

  Cat(
    this.name,
    this.gender,
    this.age,
    this.weight,
    this.color,
  );

  //These are the methods
  void breathe() {
    print("Breathing");
  }

  void eat() {
    print("Eating");
  }

  void run() {
    print("Running");
  }

  void sleep() {
    print("Sleeping");
  }

  void meow() {
    print("Meow");
  }
}

class Oscar extends Cat {
  Oscar(
    String? name,
    String? gender,
    String? age,
    String? weight,
    String? color,
  ) : super(name, gender, age, weight, color);

  @override
  void run() {
    print("Oscar not able to run");
  }
}

class Luna extends Cat {
  Luna(
    String? name,
    String? gender,
    String? age,
    String? weight,
    String? color,
  ) : super(name, gender, age, weight, color);

  @override
  void eat() {
    print("$name eat biscite");
  }
}

void main() {
  Oscar oscar = Oscar("Oscar", "Male", "10", "15kg", "red");

  print(oscar.name);
  oscar.sleep();
  oscar.run();
  print("");
  Luna luna = Luna("Luna", "Female", "8", "10kg", "amber");
  print("The name of second cat is ${luna.name}");
  luna.meow();
  luna.eat();
}
