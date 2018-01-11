package com.example.debugging;

public class CalcuratorExample {

	public static void main(String[] args) {
		System.out.println("program Start");

		int sum = 0;
		int max = 10;
		
		for (int i = 1; i <=max ; i++) {
			sum += i;
			System.out.println("i : " + i + ", " + "sum : " + sum );
		}
		
		System.out.println("sum =" + sum);
		
		System.out.println("program End");
	}

}
