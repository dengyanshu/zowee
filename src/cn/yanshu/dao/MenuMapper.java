package cn.yanshu.dao;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import cn.yanshu.entity.Menu;


public interface MenuMapper extends  BaseMapper<Menu>{
	public List<Menu> selectAllChildren(Serializable  p_id);
	public List<Menu> selectNeedChildren(Map<String,Object>  map);
	
	
	public  int  updateStateToClosed(int  id);
	public  int  updateStateToOpen(int  id);
	
	public  Menu  selectOneCommon(int id);
    
}