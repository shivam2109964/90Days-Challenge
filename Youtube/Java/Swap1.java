package Youtube.Java;

import java.util.*;

public class Swap1 {

  public static void main(String[] args) {
    Scanner input = new Scanner(System.in);

    System.out.println("Enter the first number");
    int value1 = input.nextInt();

    System.out.println("Enter the second number");
    int value2 = input.nextInt();
    input.close();

    System.out.println("Before Swapping " + value1 + " " +  value2); 

    int temp = value1;
    value1 = value2;
    value2 = temp;            

    System.out.println("After Swapping " + value1 + " " + value2);
  }
}

