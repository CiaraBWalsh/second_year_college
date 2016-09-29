package lab7Exam;

import java.util.Scanner;
public class Solution {

	public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
		Queue question = new Queue(20);
		String input = "";
		String[] splitter = new String[2];
		int size = 0;
		while(scan.hasNext())
		{
			input = scan.nextLine();
			splitter = input.split(" ");
			if(splitter[0].equalsIgnoreCase("insert"))
			{
				question.insert(splitter[1]);
			}
			else if(splitter[0].equalsIgnoreCase("remove")&& !question.isEmpty())
			{
				question.remove();
			}
		}
		size = question.size();
		if(question.isEmpty())
		{
			System.out.println("empty");
		}
		else if(size % 2 == 1)
		{
			for(int i = 0; i<(size/2);i++)
			{
				question.remove();
			}
			System.out.println(question.remove());
		}
		else if(size % 2 != 1)
		{
			for(int i = 0; i<(size/2)-1;i++)
			{
				question.remove();
			}
			System.out.println(question.remove());
		}
		

	}

}
