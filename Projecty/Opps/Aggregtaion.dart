class Engine {
  String? type;
}

class Car {
  Engine? engine;
}

void main() {
  //Create an Engine
  final myEngine = Engine();
  myEngine.type = "V8";

  //Create a car and Associate with Engine
  final myCar = Car();
  myCar.engine = myEngine;

  //Now my Car contains an Engine, but the Engine can exit independently
  print("Car engine type: ${myCar.engine!.type}");
}
