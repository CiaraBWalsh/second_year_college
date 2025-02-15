package lab7Exam;

class Queue{
    
    private int maxSize;
    private String[] queArray;
    private int front;
    private int rear;
    private int nItems;
    
    public Queue(int s){
        maxSize = s;
        queArray = new String[maxSize];
        front = 0;
        rear = -1;
        nItems = 0;
    }
    
    public boolean insert(String item){ 
        if(!isFull()){
            rear++;
            queArray[rear]=item;
            nItems++;
            return true;
        }else{
            return false;
        }
    }
      
    public String remove(){
        String temp = queArray[front];
        front++;
        if(front == maxSize)
        front = 0;
        nItems--;
        return temp;
    } 

    public boolean isEmpty(){ 
        return (nItems==0);
    }
        
    public boolean isFull(){
        return (nItems==maxSize);
    }
        
    public int size(){ 
        return nItems;
    } 
}