int stray(List<int> numbers) {
  late int uniqueNum;
  for (int i = 0; i < numbers.length; i++) {
    int currentNumber = numbers[i];
    bool isUnique = true;

    for (int j = 0; j < numbers.length; j++) {
      if (i != j && currentNumber == numbers[j]) {
        isUnique = false;
      }
      if (isUnique) {
        uniqueNum = currentNumber;
      }
    }
  }
  return uniqueNum;
}

//One more approach to do it
int stray1(numbers) {
  numbers.sort();
  int ans = (numbers[0] == numbers[1] ? numbers.last : numbers.first);
  return ans;
}

//One more approach to do it
int stray2(List<int> numbers) {
  return numbers.reduce((value, element) => value ^ element);
}

void main() {
  var result = stray([
    1,
    1,
    1,
    1,
    13,
  ]);
  print(result);

  var result1 = stray1([
    2,
    2,
    2,
    19,
    2,
  ]);
  print(result1);

  var result3 = stray2([3,3,3,4,4,3,54]);
  print(result3);
}
