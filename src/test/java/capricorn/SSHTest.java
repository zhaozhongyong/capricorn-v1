package capricorn;

import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zhaozhy.capricorn.entity.Student;
import com.zhaozhy.capricorn.service.StudentService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring/applicationContext*.xml")
public class SSHTest {

	@Resource
	private Date date;
	
	@Resource
	private StudentService studentService;
	
	@Test
	public void springIOC(){
		System.out.println(date);
	}
	
	@Test
	public void testHibernateSave(){
		Student t=new Student();
		t.setName("user1");
		t.setPassword("123");
		studentService.save(t);
	}
}
