package org.framestudy.spring_mybatis.relationmag.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.framestudy.spring_mybatis.relationmag.beans.Games;
import org.framestudy.spring_mybatis.relationmag.beans.Player;
import org.framestudy.spring_mybatis.relationmag.dao.IPlayerDao;
import org.framestudy.spring_mybatis.relationmag.mapper.PlayerMapper;
import org.springframework.stereotype.Repository;

@Repository
public class PlayerDaoImpl implements IPlayerDao {

	private PlayerMapper pm;
	
	public void setSession(SqlSession session){
		pm = session.getMapper(PlayerMapper.class);
	}
	
	@Override
	public Player getPlayerById(Long id) {
		// TODO Auto-generated method stub
		return pm.getPlayerById(id);
	}

	@Override
	public int playerChoiceGames(Player player, List<Games> games) {
		// TODO Auto-generated method stub
		return pm.playerChoiceGames(player, games);
	}

	@Override
	public List<Player> getPlayerWithGamesByPlayerName(String name) {
		// TODO Auto-generated method stub
		return pm.getPlayerWithGamesByPlayerName(name);
	}

}
