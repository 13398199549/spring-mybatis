package org.framestudy.spring_mybatis.relationmag.mapper;

import org.apache.ibatis.annotations.Param;
import org.framestudy.spring_mybatis.relationmag.beans.Husband;

public interface HusbandMapper {

	/**
	 * 男女结婚
	 * @param hus
	 * @return
	 */
	public int marry(@Param("hus")Husband hus);
	/**
	 * 根据丈夫的ID查询丈夫以及妻子
	 * @param id
	 * @return
	 */
	public Husband getHusbandWithWifeByHusbandId(Long id);
	
	/**
	 * 根据丈夫的ID删除丈夫与妻子
	 * @param id
	 * @return
	 */
	public int deleteHusbandWithWifeByHusbandId(Long id);
	
	
	
	
	
}
