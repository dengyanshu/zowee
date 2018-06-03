package cn.yanshu.dao;

import java.util.List;
import java.util.Map;

import cn.yanshu.entity.Role;


public interface RoleMapper extends  BaseMapper<Role> {
	
	
   public Integer[]	selectMenusByRoleid(int roleId);
   
   
   public  int delete_rm_table(int roleId);
   
   public int  insert_rm_table(List<Map<String,Object>> list);
}