package com.gatlingbook.util;

import org.mindrot.jbcrypt.BCrypt;

public class Password {

	public static String hashPassword(String pwd) {
		String hashed = BCrypt.hashpw(pwd, BCrypt.gensalt());
		
		return hashed;
	}
	
	public static boolean verifyPassword(String pwd, String hash) {
		boolean b = BCrypt.checkpw(pwd, hash);
		
		return b;
	}
}
