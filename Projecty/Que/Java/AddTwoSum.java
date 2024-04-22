package Projecty.Que.Java;


public class AddTwoSum {

  public static void main(String[] args) {
    // Initial values
    int num1 = 123;
    int num2 = 321;

    System.out.println("Before swapping:");
    System.out.println("num1: " + num1);
    System.out.println("num2: " + num2);

    // Swapping logic using a temporary variable
    int temp = num1;
    num1 = num2;
    num2 = temp;

    System.out.println("\nAfter swapping:");
    System.out.println("num1: " + num1);
    System.out.println("num2: " + num2);
}
}
