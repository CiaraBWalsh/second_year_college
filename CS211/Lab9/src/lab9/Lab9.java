package lab9;


public class Lab9 {
	public static void main(String args[]) {
		int count = 100000000;
		double snapRolls = 0, sneezeRolls = 0, bothRolls = 0, temp = 0;
		double snapchat = 0, sneeze = 0, both = 0;
		boolean snapbool = false;
		boolean sneezebool = false;
		for (int i = 0; i < count; i++) {
			snapbool = ((int) (Math.random() * 10000) == 1);
			sneezebool = ((int) (Math.random() * 10000) == 1);
			int roll = (int) (Math.random() * 6) + 1;
			temp++;
			if (roll == 6 && !snapbool && !sneezebool) { //if 6 but no other events
				temp = 0;
			}
			if (snapbool) {
				while (roll != 6 && !sneezebool) {
					i++;
					temp++;
					roll = (int) (Math.random() * 6) + 1;
					sneezebool = ((int) (Math.random() * 10000) == 1);
				}
				if (sneezebool) {
					bothRolls += temp;
					temp = 0;
					both++;
				}
				snapRolls += temp;
				temp = 0;
				snapchat++;
			}
			if (sneezebool) {
				while (roll != 6 && !snapbool) {
					i++;
					temp++;
					roll = (int) (Math.random() * 6) + 1;
					snapbool = ((int) (Math.random() * 10000) == 1);
				}
				if (snapbool) {
					bothRolls += temp;
					temp = 0;
					both++;
				}
				sneezeRolls += temp;
				temp = 0;
				sneeze++;
			}
		}
		snapRolls = snapRolls / snapchat;
		sneezeRolls = sneezeRolls / sneeze;
		bothRolls = bothRolls / both;

		//System.out.println("Average rolls to get a 6: " + sixes);
		System.out.println("Average rolls to get a 6 and a Snapchat: " + snapRolls);
		System.out.println("Average rolls to get a 6 and sneezing: " + sneezeRolls);
		System.out.println("Average rolls to get a 6 and a Snapchat and sneezing: " + bothRolls);

	}

}
