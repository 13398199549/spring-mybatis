package org.framestudy.spring_mybatis.relationmag.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.framestudy.spring_mybatis.relationmag.beans.Games;
import org.framestudy.spring_mybatis.relationmag.beans.Player;

public interface PlayerMapper {
	/**
	 * 根据ID查询玩家
	 * @param id
	 * @return
	 */
	public Player getPlayerById(Long id);
	
	
	/**
	 * 玩家选择多个游戏
	 * @param player
	 * @param games
	 * @return
	 */
	public int playerChoiceGames(@Param("player")Player player,@Param("games")List<Games> games);
	
	/**
	 * 根据玩家名称查询玩家，并查询游戏结果
	 * @param name
	 * @return
	 */
	public List<Player> getPlayerWithGamesByPlayerName(@Param("name")String name);
	
}
