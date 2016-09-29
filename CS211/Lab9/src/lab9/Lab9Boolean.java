package lab9;

import java.util.*;

public class Lab9Boolean {
	public static void main(String args[]) {
		int count = 10000000;
		double snapRolls = 0, sneezeRolls = 0, bothRolls = 0, tempsnap = 0, tempsneeze = 0,
				tempboth = 0, sixes = 0, temp = 0, rolls = 0;
		double dice = 0.16666666666, snapchat = 0, sneeze = 0, both = 0;
		boolean snapbool = false;
		boolean sneezebool = false;
		Random rand = new Random();
		for (int i = 0; i < count; i++) {
			snapbool = rand.nextBoolean();
			sneezebool = rand.nextBoolean();
			int roll = (int) (Math.random() * 6) + 1;
			tempsnap++;
			tempsneeze++;
			tempboth++;
			temp++;
			if(roll == 6)
			{
				rolls++;
				sixes += temp;
				temp=0;
			}
			if (snapbool && roll == 6) {
				snapchat++;
				snapRolls += tempsnap;
				tempsnap = 0;
			}
			if (sneezebool && roll == 6) {
				sneeze++;
				sneezeRolls += tempsneeze;
				tempsneeze = 0;
			}
			if (snapbool && sneezebool && roll == 6) {
				bothRolls += tempboth;
				tempboth = 0;
				both++;
			}

		}
		snapRolls = snapRolls/snapchat;
		sneezeRolls = sneezeRolls/sneeze;
		bothRolls = bothRolls/both;
		sixes = sixes/rolls;

		snapchat = (snapchat / count) * dice;
		sneeze = (sneeze / count) * dice;
		both = (snapchat * sneeze) * dice;

		System.out.println("Probability of rolling a 6: " + dice);
		System.out.println("Probability of rolling a 6 and getting a Snapchat: " + snapchat);
		System.out.println("Probability of rolling a 6 and sneezing: " + sneeze);
		System.out.println("Probability of rolling a 6 and getting a Snapchat and sneezing: " + both +"\n \n");
		
		
		System.out.println("Average rolls to get a 6: " + sixes);
		System.out.println("Average rolls to get a 6 and a Snapchat: " + snapRolls);
		System.out.println("Average rolls to get a 6 and sneezing: " + sneezeRolls);
		System.out.println("Average rolls to get a 6 and a Snapchat and sneezing: " + bothRolls);

	}

}
