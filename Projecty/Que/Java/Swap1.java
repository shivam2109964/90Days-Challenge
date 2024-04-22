package Projecty.Que.Java;

import java.util.*;

public class Swap1 {

  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    System.out.println("Enter the first number");
    int value1 = input.nextInt();

    System.out.println("Enter the second number");
    int value2 = input.nextInt();

    System.out.println("Before Swaping");
    System.out.println("First Number: " + value1 + " Second Number " + value2);
    System.out.println("And there sum is: " + (value1 + value2));

    //Now Let swap the number
    int temp = value1;
    value1 = value2;
    value2 = temp;

    System.out.println("After Swaping");
    System.out.println("First Number: " + value1 + " Second Number " + value2);
    System.out.println("And there sum is: " + (value1 + value2));
    input.close();
  }
}
