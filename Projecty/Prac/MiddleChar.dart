String getMiddle(String s) {
  List<String> char = s.split("");
  List<String> finalValue = [];
  if (char.length.isEven) {
    for (int i = char.length ~/ 2 - 1; i <= char.length ~/ 2; i++) {
      finalValue.add(char[i]);
    }
  } else {
    for (int i = char.length ~/ 2; i <= char.length ~/ 2; i++) {
      finalValue.add(char[i]);
    }
  }

  return finalValue.join();
}

//One more Approach
String getMiddle1(String s) {
  final middleIndex = s.length ~/ 2;
  return s.length.isOdd
      ? s[middleIndex]
      : s.substring(middleIndex - 1, middleIndex + 1);
}

//One more Approach
String getMiddle2(String s) => (s.length.isOdd) ? s[s.length ~/ 2] : s[s.length ~/ 2 -1 ] + s[s.length ~/ 2]; 

//One more Approach
String getMiddle3(String s) {
  return s.substring((s.length / 2).ceil() - 1, (s.length / 2).floor() + 1 );
}

void main() {
  var result = getMiddle("testy");
  print(result);
}
