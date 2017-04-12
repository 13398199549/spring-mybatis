package org.framestudy.spring_mybatis.test.usermag;

import javax.annotation.Resource;

import org.framestudy.spring_mybatis.relationmag.beans.Wife;
import org.framestudy.spring_mybatis.relationmag.dao.IWifeDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath*:applicationContext.xml"})
public class TestWifeDao {

	@Resource
	private IWifeDao wifeDaoImpl;
	
	@Test
	public void testGetWifeWithHusbandByWifeId(){
		Wife wife = wifeDaoImpl.getWifeWithHusbandByWifeId(2l);
		System.out.println(wife);
	}
	
	
}
