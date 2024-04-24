int squareSum(List numbers) {
  if(numbers.isEmpty){
    return 0;
  }else{
     return numbers.map((e) => e * e).reduce((value, element) => value + element);
  }
}

void main() {
  var result = squareSum([]);
  print(result);
}
