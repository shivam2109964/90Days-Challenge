abstract class Power {
  void fly() {
    print("Now you have a power of superman!");
  }

  void invisible() {
    print("Become Invisible");
  }
}

class Human extends Power {
  String name;
  Human(this.name);

  void summonPower() {
    print("I am human my name is $name now i summon Power so");
    super.fly();
    super.invisible();
  }
}

void main(){
  Human person = Human("Tony");
  person.summonPower();
}