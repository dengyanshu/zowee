package cn.yanshu.dao;

import cn.yanshu.entity.StoreProcess;

public interface StoreProcessMapper extends  BaseMapper<StoreProcess>{
   
	
	
	public StoreProcess selectExist(StoreProcess sp);
}