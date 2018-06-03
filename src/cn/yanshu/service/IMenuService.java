package cn.yanshu.service;

import cn.yanshu.entity.Menu;

public interface IMenuService extends IBaseService<Menu> {
	
	public  Menu selectAllMenu();
	
	
	public  Menu selectNeedMenu(int  roleId);
	
	
	public  int  insertMenuAndUpdateState(Menu menu);
	
	
	public  int  deleteAndUpdateState(int id,int parentId);

}
