void main() {
  print(StaticVari.pi);
  print(StaticVari.calc());
  StaticVari.printAr();
}

class StaticVari {
  //Static Variable
  static double pi = 3.14;
  //Static Methods
  static int calc() {
    return 3;
  }

  static void printAr() {
    print("The code is here...");
  }
}
