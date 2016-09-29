package lab3;

import java.util.*;

public class Huffman 
{

	public static void main(String[] args) 
	{
		Scanner in = new Scanner(System.in);

		System.out.print("Enter your sentence: ");
		String sentence = in.nextLine();
		String binaryString = ""; // this stores the string of binary code
		in.close();
		
		int ascii =0,huffman = 0;
		String binary = "";

		for (int i = 0; i < sentence.length(); i++) 
		{ // go through the sentence
			int decimalValue = (int) sentence.charAt(i); // convert to decimal
			String binaryValue = Integer.toBinaryString(decimalValue); //binary conversion
			
			
			for (int j = 7; j > binaryValue.length(); j--) 
			{
				binaryString += "0"; // this loop adds in leading zeros to make the full 7 bits
			}
			binaryString += binaryValue + " "; // add to the string of binary
		}
		System.out.println(binaryString); // print out the binary string
		
		if(sentence.length()==1) //if length of sentence is 1, then no trees are needed
		{
			binary = "1"; 		//The path is just one
			huffman = 1;		//The length of the compressed string will be one
		}
		else //if there is more than one character, then use this method 
		{

			int[] array = new int[256]; // an array to store all the frequencies

			for (int i = 0; i < sentence.length(); i++) 
			{ 															// go through the sentence
				array[(int) sentence.charAt(i)]++; 						// increment the appropriate frequencies
												
				
			}

			PriorityQueue<Tree> PQ = new PriorityQueue<Tree>(); // make a priority queue to hold all the trees
															
			for (int i = 0; i < array.length; i++) 
			{ 													// go through frequency array
				if (array[i] > 0) 
				{ 												// print out non-zero frequencies - cast to a char
								
					System.out.println("'" + (char) i + "' appeared " + array[i] + ((array[i] == 1) ? " time" : " times"));

					Node node1 = new Node((char) i);			//Make Node to hold next char
					Tree tree1 = new Tree(node1, array[(char) i]);	//make new tree to hold this node and the frequency that the char appears
					PQ.add(tree1);									//Add the tree to the PQ
				}
			}

			while (PQ.size() > 1)
			{ 														// while there are two or more Trees left in the PQ
				
				Tree tree1 = PQ.poll(); 							//get the trees from the PQ
				Tree tree2 = PQ.poll();

				Node nextNode = new Node(); 							//Create a new Node
				nextNode.leftChild = tree1.root; 						//Sets the children of the new node to the trees pulled from PQ
				nextNode.rightChild = tree2.root;   					//Combines the previous tree to a new level

				int frequency = tree1.frequency + tree2.frequency;
				Tree newTree = new Tree(nextNode, frequency);
				PQ.add(newTree);
			}

			Tree HuffmanTree = PQ.poll(); //get codes from the combined tree

	/*	String codes = "";
		for (int i = 0; i < array.length; i++) { //loop through to each character in the array
			if (array[i] > 0) { 
				codes += "Char: " + ((char) i) + " Huffman code is: ";
				codes += HuffmanTree.getCode((char) i); //get the Huffman code for each character
				codes += "\n";
			}
		}
		System.out.println("Huffman codes are:\n " + codes);*/
	
			for (int i = 0; i < sentence.length(); i++) 
			{
			
				binary += HuffmanTree.getCode(sentence.charAt(i)); //gets Huffman code for each letter in the original string and adds to new binary string
				binary += " ";
			}
			huffman = (binary.replaceAll("\\s+", "").length()); //removes whitespace from the compressed string and gets length
		}
		
		
		System.out.println("Sentence in codes is: " + binary); //print out the new compressed binary string

		ascii = (binaryString.replaceAll("\\s+", "").length()); //removes whitespace from the original binary string and gets length
		
		double divisor = ((double) huffman / ascii) * 100; //calculates the compression rate

		System.out.println("Compressed size is: " + huffman + "/" + ascii + " = " + (int) divisor + "%"); //prints out the compression rate

	}
}