package lab7;
import java.util.*;

public class Solution {
	public static void main(String args[])
	{
		Scanner scan = new Scanner(System.in);
		Queue bla = new Queue(100);
			while(scan.hasNextInt())
			{
				bla.insert(scan.nextInt());
			}
			bla.printQ();
		
	}
}
