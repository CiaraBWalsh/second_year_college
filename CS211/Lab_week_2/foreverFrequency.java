package lab2;
import java.util.*;

public class foreverFrequency
 {
	public static void main(String args[]) {
		Scanner scan = new Scanner(System.in);
		String inputs = scan.nextLine();
		scan.close();
		int n = inputs.length();
		int working[][] = new int[256][2];
		int elements = 0;
		for (int i = 0; i < 256; i++) {
			working[i][0] = i;
		}

		for (int i = 0; i < n; i++) {
			working[(int) inputs.charAt(i)][1]++;

		}
		for (int i = 0; i < 256; i++) {
			if (working[i][1] > 0)
				elements++;
		}
		for (int i = 0; i < 256; i++) {
			for (int j = 0; j < 256; j++) {
				if (working[i][1] > working[j][1]) {
					int temp1 = working[i][1];
					int temp2 = working[i][0];
					working[i][1] = working[j][1];
					working[i][0] = working[j][0];
					working[j][1] = temp1;
					working[j][0] = temp2;
				}
			}
		}
		
		for (int i = 0; i < elements; i++) {
			for (int j = 0; j < elements; j++) {
				if (working[i][1] == working[j][1]) {

					if (working[i][0] < working[j][0]) {
						int temp = working[i][1];
						int temp2 = working[i][0];
						working[i][1] = working[j][1];
						working[i][0] = working[j][0];
						working[j][1] = temp;
						working[j][0] = temp2;
					}
				}
			}
		}
		for (int i = 0; i < elements; i++) {
			System.out.print((char) working[i][0]);
		}

	}
}