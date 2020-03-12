import java.util.Scanner;

public class Taboola {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		System.out.print("Please type in an integer: ");
		String str1 = in.next();
		System.out.println("Integer after parsing: " + parse(str1));
		System.out.print("Please type in a string: ");
		String str2 = in.nextLine();
		str2 = in.nextLine();
		System.out.println("The string contains any integers? " + detectInt(str2));
	}
	
	// Test 1
	private static int parse(String str) {
		int num = 0;
		char[] arr = str.toCharArray();
		for (char c : arr) {
			num *= 10;
			num += c - '0';
		}
		return num;
	}
	
	// Test 2
	private static boolean detectInt(String str) {
		boolean result = false;
		char[] arr = str.toCharArray();
		for (char c : arr) {
			if (c - '0' < 10 && c - '0' >= 0) {
				result = true;
				break;
			}
		}
		return result;
	}
}
