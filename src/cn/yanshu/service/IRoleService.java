package cn.yanshu.service;

import cn.yanshu.entity.Role;

public interface IRoleService extends IBaseService<Role> {
    
	public Integer[] selectMenuidsByRoleId(int roleId);
	
	
	public int deleteAndInsert_rm_table(int roleId,int[] menuids);
}
