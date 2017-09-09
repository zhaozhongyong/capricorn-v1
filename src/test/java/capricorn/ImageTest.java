package capricorn;

import org.junit.Test;

import com.zhaozhy.capricorn.util.ImageUtil;

public class ImageTest {

	@Test
	public void testImage(){
		ImageUtil.pressText("zzy", "D:/test.jpg", "", 11, 11, 20, 20, 20);
	}
}
