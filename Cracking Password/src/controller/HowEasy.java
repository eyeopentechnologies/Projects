package controller;

import java.util.regex.Pattern;

class HowEasy {
    public boolean matches(String regex) {
        System.out.println(Pattern.matches(regex, "abcABC   "));
        return Pattern.matches(regex, "abcABC");
    }
    public static void main(String[] args) {
        HowEasy words = new HowEasy();
        words.matches("[a-zA-Z]");
    }
}