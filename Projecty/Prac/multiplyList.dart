int grow(List<int> arr) => arr.reduce((value, element) => value * element);

void main(){
  List<int> arr = [4,1,1,1,4];
  var result = grow(arr);
  print(result);
}
