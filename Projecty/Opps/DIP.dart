// High-level module
class Switch {
  Light light;

  Switch(this.light);

  void toggle() {
    if (light.isOn) {
      light.turnOff();
    } else {
      light.turnOn();
    }
  }
}

// Low-level module
class Light {
  bool isOn = false;

  void turnOn() {
    isOn = true;
    print('Light is on');
  }

  void turnOff() {
    isOn = false;
    print('Light is off');
  }
}

void main() {
  Light light = Light();
  Switch switchButton = Switch(light);

  switchButton.toggle(); // Turn on the light
  switchButton.toggle(); // Turn off the light
}
