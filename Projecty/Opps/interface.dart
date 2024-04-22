abstract class MethodsPerf {
  int sum(int a, int b);
}

class Calu implements MethodsPerf {
  @override
  int sum(int x, int y) {
    int summm = x + y;
    return summm;
  }
}

void main() {
  var calu = Calu();
  var result = calu.sum(3, 3);
  print(result);
}
