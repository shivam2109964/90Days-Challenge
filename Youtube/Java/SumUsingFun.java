package Youtube.Java;
import java.util.*;

public class SumUsingFun {

  //In this code we add both integer again but by using methods

  public static int addNumber(int x, int y) {
    int sum = x + y;
    return sum;
  }

  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);

    System.out.println("Enter the first number");
    int value1 = input.nextInt();

    System.out.println("Enter the second number");
    int value2 = input.nextInt();
    input.close();

    int result = addNumber(value1, value2);

    System.out.println("The result is " + result);
  }
}
