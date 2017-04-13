package org.framestudy.spring_mybatis.relationmag.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.framestudy.spring_mybatis.relationmag.beans.Games;
import org.framestudy.spring_mybatis.relationmag.dao.IGameDao;
import org.framestudy.spring_mybatis.relationmag.mapper.GameMapper;
import org.springframework.stereotype.Repository;

@Repository
public class GameDaoImpl implements IGameDao {

	private GameMapper gm;
	
	public void setSession(SqlSession session){
		gm = session.getMapper(GameMapper.class);
	}
	
	@Override
	public List<Games> getAllGames() {
		// TODO Auto-generated method stub
		return gm.getAllGames();
	}

}
