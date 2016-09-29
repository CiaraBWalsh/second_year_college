package lab5;

import java.util.Scanner;
import java.io.*;

public class Frequency
 {
	static Scanner coded;
	public static void main(String args[]) throws FileNotFoundException {
		Scanner coded = new Scanner(new File("X:/CS211/mystery.txt"));
		StringBuffer tempsb = new StringBuffer("");
		String inputs = "";
		while(coded.hasNext())
		{
			tempsb.append(coded.nextLine());
			
		}
		inputs = tempsb.toString();
		// System.out.println(inputs);
		int working[][] = new int[256][2];
		int elements = 0;
		for (int i = 0; i < 256; i++) {
			working[i][0] = i;
		}
		int n = inputs.length();
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
