package org.framestudy.spring_mybatis.usermag.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.framestudy.spring_mybatis.usermag.beans.UserInfo;
import org.framestudy.spring_mybatis.usermag.dao.IUserDao;
import org.framestudy.spring_mybatis.usermag.mapper.UserMapper;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements IUserDao {

	private UserMapper um;
	
	public void setSession(SqlSession session) {
		um = session.getMapper(UserMapper.class);//取得接口的实例
	}

	public int saveUserInfo(UserInfo user) {
		// TODO Auto-generated method stub
		return um.saveUserInfo(user);
	}

	public int updateUserInfo(UserInfo user) {
		// TODO Auto-generated method stub
		return um.updateUserInfo(user);
	}

	public int deleteUserInfo(Long id) {
		// TODO Auto-generated method stub
		return um.deleteUserInfo(id);
	}

	public UserInfo getUserInfoById(Long id) {
		// TODO Auto-generated method stub
		return um.getUserInfoById(id);
	}

	public UserInfo getUserByLoginNameAndPwd(String loginName, String pwd) {
		// TODO Auto-generated method stub
		return um.getUserByLoginNameAndPwd(loginName,pwd);
	}

	public List<UserInfo> queryUserListByMap(Map map) {
		// TODO Auto-generated method stub
		return um.queryUserListByMap(map);
	}
	
	public int batchSaveUserInfo(List<UserInfo> user) {
		// TODO Auto-generated method stub
		return um.batchSaveUserInfo(user);
	}

	public int batchDeleteUserInfo(List<UserInfo> user) {
		// TODO Auto-generated method stub
		return um.batchDeleteUserInfo(user);
	}

}
