package cn.yanshu.service;

import java.util.List;
import java.util.Map;

public interface IReportService {
	public List<Map<String,Object>> smtline_getline();
	
	
	public  Map<String ,Object> smtline_mo(String moname,String workcenterid);
	
	
	public  Map<String ,Object> smtline_mz(String moname,String workcenterid);
	
	
	public  List<Map<String,Object>> zbsite_getworkcenter(String site);
	
	
	
	public  Map<String ,Object>  zbsite_getresult(String site,String workcenter,String adate,String bdate,String banci);

	public  Map<String ,Object>  smtopc_example(String moid,String moname,String lotsn);

}
