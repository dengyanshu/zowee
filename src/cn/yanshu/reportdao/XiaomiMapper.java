package cn.yanshu.reportdao;

import java.util.List;
import java.util.Map;


public interface XiaomiMapper {

	List<Map<String,Object>> getLineInfo(Map<String,Object> map);

	List<Map<String, Object>> getMachineinfo(Map<String, Object> paramap);
	
   
}