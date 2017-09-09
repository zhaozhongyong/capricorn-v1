package capricorn;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;

import org.junit.Test;

import com.zhaozhy.capricorn.util.MD5Util;

public class MD5Test {

	@Test
	public void testMD5() throws NoSuchAlgorithmException, UnsupportedEncodingException{
		String str="123";
		System.out.println(MD5Util.getEncryptedPwd(str));
	}
	
	@Test
	public void testMD51() throws NoSuchAlgorithmException, UnsupportedEncodingException{
		boolean b=MD5Util.validPassword("123", "165E540ED645000B5E449E3905951DBE9D46AD580D6A52C85EB1450");
		System.out.println(b);
	}
}
