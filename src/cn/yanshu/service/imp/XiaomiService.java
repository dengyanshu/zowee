package cn.yanshu.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yanshu.reportdao.XiaomiMapper;
import cn.yanshu.service.IXiaomiServie;


@Service
public class XiaomiService implements IXiaomiServie {
    
	@Autowired
	private XiaomiMapper  xiaomiMapper;
	
	@Override
	public List<Map<String,Object>> getLineinfo(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return xiaomiMapper.getLineInfo(map);
	}

	@Override
	public List<Map<String, Object>> getMachineinfo(Map<String, Object> paramap) {
		// TODO Auto-generated method stub
		return xiaomiMapper.getMachineinfo(paramap);
	}

}
