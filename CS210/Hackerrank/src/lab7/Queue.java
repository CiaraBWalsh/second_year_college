package lab7;

class Queue {
	private int maxSize;
	private int[] queArray;
	private int front;
	private int rear;
	private int nItems;

	public Queue(int s) { // constructor
		maxSize = s;
		queArray = new int[maxSize];
		front = 0;
		rear = -1;
		nItems = 0;
	}

	public void printQ() {
		System.out.print("\t\tQUEUE Contents: ");
		for (int i = 0; i < nItems; i++) {
			System.out.print("[" + queArray[i] + "]");
		}
		System.out.println("");
	}
	public void insert(int item) {
		
		System.out.println("\tINSERT(" + item + ")");
		if (nItems == 0) { // if no items,
			queArray[0] = item; // insert at 0
		} else { // if some items,
			int j = nItems; // start at end

			/****
			To change the priority of this queue - just change the > symbol in the queArray[j-1] > item clause
		**/
			/** Less than means that lower numbers have priority **/
			while (j > 0 && queArray[j - 1] < item) { // while new item larger
				queArray[j] = queArray[j - 1]; // shift upward
				j--; // decrement j
			}
			queArray[j] = item; // insert it
		}
		/*****/		
		front = nItems; // NEW LINE OF CODE FOR PRIORITY QUEUE.... 
		nItems++; // increase items
	}

	public int remove() { // take item from front of queue
		int temp = queArray[front]; // get value   
		front--; // We need to move the front back.... 
		if (front == maxSize) { // deal with wraparound
			front = 0;
		}
		nItems--; // one less item
		return temp;
	}

	public int peekFront() { // peek at front of queue
		return queArray[front];
	}

	public boolean isEmpty() { // true if queue is empty
		return (nItems == 0);
	}

	public boolean isFull() { // true if queue is full
		return (nItems == maxSize);
	}

	public int size() { // number of items in queue
		return nItems;
	}
}