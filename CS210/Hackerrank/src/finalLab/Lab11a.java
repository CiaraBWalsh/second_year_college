package finalLab;


import java.util.*;

public class Lab11a
{
	public static void main(String args[])
	{
    	//Variables Declariables
    	Scanner sc = new Scanner(System.in);
    	int b1 = sc.nextInt();
    	int b2 = sc.nextInt();
    	int x = sc.nextInt();
   	 
    	//1. Determine no. of digits (n)
    	//if x/10 = 0, 1 digit
    	//if x/100 = 0, 2 digit
   	 
    	int i = 1;
    	int digit = 0;
    	while(x/i != 0)
    	{
        	i = i*10;
        	digit++;
    	}
   	 
    	//2. Base 10 conversion
    	//Example b1 = 3, x = 210 (210[b3] -> 21[b10])
    	//n.digit + n-1.digit*(b1) + n-2.digit*(b1^2) + ... + 1.digit*(b1^(n-1))
    	//n.digit = x % 10
    	//n-1.digit = x % 100 etc.
    	//to get n.digit -> x%10 -> x%(10^1)
    	//to get n-1.digit -> (x%100)/10 -> (x%(10^2))/(10^1)
    	//to get n-2.digit -> (x%1000)/100 -> (x%(10^3))/(10^2)
    	int y = 0; //y is the base 10 converted form of x
    	int q = 0;
    	double n = 0; //extra working variable (Math.pow only works with doubles)
   	 
    	for(i = 1; i <= digit; i++)
    	{
        	n = x % Math.pow(10,i);
        	n = n / (Math.pow(10,(i-1)));
        	q = (int)n;
       	 
        	n = q * Math.pow(b1,(i-1));
        	q = (int)n;
        	y = y+q;
    	}
    	//y now equals x to the base 10. ayyyy.
   	 
    	//3. Convert from base 10 to base b2
    	//Example: 21[b10] -> ?[b3]
    	//find highest power of 3 under 21 (9 here (3^2))
    	//find how many times 9 goes into 21 (18 = 9*2)
    	//find remainder of 21-18 (3)
    	//next power -> 3 -> goes in once(1)
    	//3-3 = 0 -> 1 goes in 0 times
    	//digit.n = power.n+1 (eq, 3rd digit is x^2)
   	 
    	//highest power
    	int power = 0;
    	int value = 1;
    	int count = 0;
    	while(value <= y)
    	{
        	value = value * b2;
        	power++;
    	}
    	value = value/b2;
    	power--;
   	 
    	x = 0;
    	for(i = power; i >= 0; i--)
    	{
        	n = Math.pow(b2,i);
        	q = (int)n;
        	value = 0;
        	count = 0;
        	while(value <= y)
        	{
            	value = value + q;
            	count++;
        	}
        	value = value - q;
        	count--;
       	 
        	y = y - value;
        	System.out.print(count);
    	}
	}
}
