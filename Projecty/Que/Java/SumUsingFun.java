package Projecty.Que.Java;

import java.util.*;

public class SumUsingFun {

  public static int addNumber(int a, int b) {
    int sum = a + b;
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
    System.out.println(result);
  }
}
