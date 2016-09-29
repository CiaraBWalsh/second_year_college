package Lab1;

import java.util.*;
import javax.swing.JOptionPane;

public class question1 {
	public static void main(String args[]) {
		Random rand = new Random();

		int tests = 100000, triCount = 0;

		double[] breaks = new double[2];
		double[] sides = new double[3];
		double remains = 0.0;

		for (int i = 0; i < tests; i++) {

			breaks[0] = rand.nextDouble();

			remains = 1.0 - breaks[0];
			double temp = 1.0;

			if (breaks[0] <= 0.5) {
				do {
					temp = rand.nextDouble();
				} while (temp >= remains);
				breaks[1] = temp;
			} else {
				do {
					temp = rand.nextDouble();
				} while (temp >= breaks[0]);
				breaks[1] = temp;
				breaks[0] = breaks[0] - breaks[1];
			}

			sides[0] = breaks[0];
			sides[1] = breaks[1];
			sides[2] = 1.0 - (breaks[0] + breaks[1]);

			Arrays.sort(sides);

			if (sides[2] < (sides[1] + sides[0])) {
				triCount++;
			}

		}
		double prob = (double) triCount / tests;
		System.out.println("Tricount " + triCount);
		System.out.println("Probability " + prob);
	}

}
