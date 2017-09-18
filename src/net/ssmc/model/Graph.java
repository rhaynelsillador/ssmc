package net.ssmc.model;

public class Graph {
	
	private int data[];

	public Graph(int index, int count) {
		data = new int[2];
		this.data[0] = index;
		this.data[1] = count;
	}
	
	public int[] getData() {
		return data;
	}

	public void setData(int[] data) {
		this.data = data;
	}
}
