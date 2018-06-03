package cn.yanshu.dao;

import java.util.Map;

import cn.yanshu.entity.User;

public interface UserMapper extends  BaseMapper<User> {
	
	
	public  User login(User user);
	
	
	public int  updatePwd(Map<String,Object>  map);
   
}