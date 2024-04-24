 quarter(int month) {
  Map<int, String> quarterr = {
    1: "January",
    2: "February",
    3: "March",
    4: "April",
    5: "May",
    6: "June",
    7: "July",
    8: "August",
    9: "September",
    10: "October",
    11: "November",
    12: "December"
  };

  if (month >= 1 && month <= 3) {
      return "Quarter 1 --- Month name ${quarterr[month]}"; 
  } else if (month > 3 && month <= 6) {
    return "Quarter 2 --- Month name ${quarterr[month]}"; 
  } else if (month > 6 && month <= 9) {
    return "Quarter 3 --- Month name ${quarterr[month]}"; 
  } else {
    return "Quarter 4 --- Month name ${quarterr[month]}"; 
  }
}

//One more approach to do it
int quartter(int months) => (months / 3).ceil();


void main(){
  var result = quarter(8);
  print(result);

  var result1 = quartter(2);
  print(result1);
}