package controller;

import java.util.Scanner;

public class Assignment2_A {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
        @SuppressWarnings("resource")
		Scanner firstname = new Scanner(System.in);
        String firstname1 = firstname.next();
        //firstname1 = firstname1.replaceAll("[^A-Z]","-");
        //String newString = oldString.replaceAll("[^0-9]", "");
        String newString = firstname1.replaceAll("[^a-zA-Z]", "");
        System.out.println(newString);


        }

}