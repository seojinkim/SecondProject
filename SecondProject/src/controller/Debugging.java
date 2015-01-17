package controller;

public class Debugging {
	public static boolean debugging = true;

	public static void printDebuggingMessage(String message) {
		if (debugging) {
			System.out.println("[Debugging Message]"+message);
		}
	}
}
