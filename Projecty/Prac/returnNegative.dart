num makeNegative(n) {
  if(n > 0){
    return -n;
  }else {
    return n;
  }
}

void main() {
  var result = makeNegative(41);
  print(result);
}
