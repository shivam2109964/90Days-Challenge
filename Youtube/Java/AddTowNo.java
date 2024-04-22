package Youtube.Java;

import java.util.*;

public class AddTowNo {

  //In this program we try to add two integer value
  //Let's see how its work
  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    System.out.println("Enter the first number");
    int value1 = input.nextInt();

    System.out.println("Enter the second number");
    int value2 = input.nextInt();
    input.close();

    //Now add both integer
    int sum = value1 + value2;
    System.out.println("The result is: " + sum);
  }
}
