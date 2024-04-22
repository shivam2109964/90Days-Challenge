package Youtube.Java;
import java.util.*;

public class Swap {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter the number you want to swap");
        int num = input.nextInt();
        input.close();
        
        System.out.println("Original num --- " + num);
        int reversedNum = 0;

        while(num != 0){
            int digit  = num % 10;
            reversedNum = reversedNum * 10 + digit;
            num /= 10; //That's it
        }

        System.out.println("--- After Swap ---");
        System.out.println(reversedNum);
    }
}
