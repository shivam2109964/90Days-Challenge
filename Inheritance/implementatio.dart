void main() {
  var tel = Television();
  tel.volumeUp();
  tel.volumneDown();
  tel.otherCode();
}

class Remote {
  void volumeUp() {
    print("_____Volumne Up_____");
  }

  void volumneDown() {
    print("_____Volume Down_____");
  }
}

class AnotherClass {
  void otherCode() {
    print("Code...");
  }
}

class Television implements Remote, AnotherClass {
  void volumeUp() {
    print("Volume Up___");
  }

  void volumneDown() {
    print("Volumne Down____");
  }

  void otherCode() {
    print("Code...");
  }
}
