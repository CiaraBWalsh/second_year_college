package lab5;

import java.io.*;
import java.util.*;

public class bla {
	public static void main(String args[]) throws IOException, FileNotFoundException {
		BufferedReader in = new BufferedReader(
		new InputStreamReader(new FileInputStream("X:/CS211/mystery.txt"), "UTF-16"));
		String str;
		List<String> list = new ArrayList<String>();
		{
			while ((str = in.readLine()) != null)

			{
				list.add(str);
			}

			String[] stringArr = list.toArray(new String[0]);
			// all code above is to put the file into string array
			// which I then put into a temp
			String inputs = "";
			for (int i = 0; i < stringArr.length; i++)

			{
				inputs += stringArr[i];
			}
			
						
			

		}
	}

}