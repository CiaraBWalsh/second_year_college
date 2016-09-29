package lab8;



public class StockData {
	public static void main(String[] args) {

		FileIO io = new FileIO();
		String[] original = io.load("C:\\stockdata.txt");
		int numrows = original.length;
		int numcols = original[0].split("\t").length;
		double[][] array = new double[numrows][numcols];

		for (int i = 1; i < numrows; i++) {
			for (int j = 1; j < numcols; j++) {

				array[i][j] = Double.parseDouble(original[i].split("\t")[j]);
			}
		}
	}
}