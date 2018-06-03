package cn.yanshu.service;

import java.io.Serializable;

import cn.yanshu.entity.User;

public interface IUserService extends  IBaseService<User>{
	
	
	public  User login(User user);
	
	
	public  int   updatePwd(Serializable  id,String pwd);

}
