package lab5;


import java.util.*;
import java.io.*;

public class mysteryughhh {
	public static void main(String args[]) throws IOException {
		// used buffer reader to read in file
		BufferedReader in = new BufferedReader(
		new InputStreamReader(new FileInputStream("X:/CS211/mystery.txt"), "UTF-8"));
		String str;
		List<String> list = new ArrayList<String>();
		while ((str = in.readLine()) != null) {
			list.add(str);
		}
		String[] stringArr = list.toArray(new String[0]);
		// all code above is to put the file into string array
		// which I then put into a temp
		String temp = "";
		for (int i = 0; i < stringArr.length; i++) {
			temp += stringArr[i];
		}
		//Get rid of whitespace
		temp = temp.replace(" ", "");
		temp = temp.replace("\n", "");
		temp = temp.replace("\r", "");
		// here i created a character array of all unique characters, which i
		// used to reference for frequency
		char[] charAr = temp.toCharArray();
		Set<Character> charSet = new LinkedHashSet<Character>();
		for (char c : charAr) {
			charSet.add(c);
		}
		StringBuilder sb = new StringBuilder();
		for (Character character : charSet) {
			sb.append(character);
		}
		String s1 = sb.toString();
		// the array below is the array of strictly unique characters
		char[] charArray = s1.toCharArray();

		// here I count the frequency of each char, and put it into an array
		int[] freq = new int[charArray.length];
		for (int i = 0; i < charArray.length; i++) {
			for (int j = 0; j < temp.length(); j++) {
				if (charArray[i] == temp.charAt(j)) {
					freq[i]++;
				}
			}
		}
		// calculating percentages below
		double[] percentages = new double[freq.length];
		for (int i = 0; i < freq.length; i++) {
			if (freq[i] != 0) {
				double temp2 = (double) freq[i];
				double temp3 = (double) temp.length();
				double temp1 = ((temp2) / temp3) * 100;
				percentages[i] = temp1;
			}
		}
		
		// sorted the percentages
		
		Arrays.sort(percentages);
		// reverse the array
		for (int i = 0; i < percentages.length / 2; i++) {
			// swap the elements
			double temp3 = percentages[i];
			percentages[i] = percentages[percentages.length - (i + 1)];
			percentages[percentages.length - (i + 1)] = temp3;
		}
		double[] danish = { 15.45, 8.96, 7.24, 6.86, 6.03, 6.00, 5.86, 5.81, 5.23, 4.64 };
		double[] english = { 12.10, 8.94, 8.55, 7.47, 7.33, 7.17, 6.73, 6.33, 4.96, 4.21 };
		double[] finnish = { 12.22, 10.82, 8.83, 8.75, 7.97, 7.86, 5.76, 5.61, 5.01, 4.97 };
		double[] french = { 14.47, 7.98, 7.60, 7.32, 7.21, 7.11, 6.86, 5.86, 5.55, 5.39 };
		double[] german = { 15.99, 9.59, 7.71, 7.60, 6.43, 6.41, 6.34, 4.92, 4.11, 3.76 };
		double[] spanish = { 13.24, 12.50, 8.98, 7.44, 7.09, 6.91, 6.62, 5.84, 5.14, 4.43 };
		double[] swedish = { 10.15, 9.38, 8.54, 8.43, 7.69, 6.59, 5.82, 5.28, 4.70, 4.48 };

		// created a total for every language
		double dtotal = 0, etotal = 0, fitotal = 0, frtotal = 0, gtotal = 0, sptotal = 0, swtotal = 0;
		;

		// got the difference of each language
		for (int i = 0; i < danish.length; i++) {
			dtotal += Math.abs(percentages[i] - danish[i]);
			
		}
		for (int i = 0; i < english.length; i++) {
			etotal += Math.abs(percentages[i] - english[i]);
		}
		for (int i = 0; i < finnish.length; i++) {
			fitotal += Math.abs(percentages[i] - finnish[i]);
		}
		for (int i = 0; i < french.length; i++) {
			frtotal += Math.abs(percentages[i] - french[i]);
		}
		for (int i = 0; i < german.length; i++) {
			gtotal += Math.abs(percentages[i] - german[i]);
		}
		for (int i = 0; i < spanish.length; i++) {
			sptotal += Math.abs(percentages[i] - spanish[i]);
		}
		for (int i = 0; i < swedish.length; i++) {
			swtotal += Math.abs(percentages[i] - swedish[i]);
		}
		// printed out answers, didnt bother with rounding it yet
		System.out.println("The percentage errors are: ");
		System.out.println("Danish: " + dtotal);
		System.out.println("English: " + etotal);
		System.out.println("Finnish: " + fitotal);
		System.out.println("French: " + frtotal);
		System.out.println("German: " + gtotal);
		System.out.println("Spanish: " + sptotal);
		System.out.println("Swedish: " + swtotal);
	}
}
