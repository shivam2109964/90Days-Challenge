package Projecty.Que.Java;
import java.util.*;

public class AddTwoSum {

  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    System.out.println("Enter the first number");
    int value = input.nextInt();

    System.out.println("Enter the second number");
    int value1 = input.nextInt();

    int sum = value + value1;
    System.out.println("The result is: " + sum);
    input.close();
  }
}
