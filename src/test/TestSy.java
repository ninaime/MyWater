package test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import model.SyMetertype;
import system.service.SyMetertypeService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring-mvc.xml")
public class TestSy {
	
	@Autowired
	SyMetertypeService syMetertypeService;
	
	@Test
	public void findSyMeterType() {
		List<SyMetertype> findSyMeterType = syMetertypeService.findSyMeterType();
		System.out.println(findSyMeterType.get(0).getMetertypename());
	}
}
