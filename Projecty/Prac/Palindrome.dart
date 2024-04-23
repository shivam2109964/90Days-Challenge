bool isPalindrome(String x) {
  List<String> forXForward = x.split("");
  List<String> forXReversed = x.split("").reversed.toList();

  String forward = forXForward.join();
  String reversed = forXReversed.join();

  if (forward.toLowerCase() == reversed.toLowerCase()) {
    return true;
  } else
    return false;
}

void main() {
  var value = isPalindrome("Bob");
  print(value);
}
