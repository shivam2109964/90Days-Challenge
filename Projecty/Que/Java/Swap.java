package Projecty.Que.Java;

import java.util.*;

public class Swap {

  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);
    System.out.println("Enter the number you want to swap");
    int num = input.nextInt();
    int reversedNum = 0;

    while (num != 0) {
      int digit = num % 10;
      reversedNum = reversedNum * 10 + digit;
      num /= 10;
    }
    System.out.println(reversedNum);
    input.close();
  }
}
