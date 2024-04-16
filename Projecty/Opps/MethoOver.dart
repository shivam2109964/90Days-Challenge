class Human {
  void run() {
    print("Human is running");
  }
}

class Man extends Human {
  @override
  void run() {
    print("Boy is running");
  }
}

void main() {
  final man = Man();
  man.run();
}
