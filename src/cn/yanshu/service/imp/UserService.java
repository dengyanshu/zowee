package cn.yanshu.service.imp;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import cn.yanshu.dao.UserMapper;
import cn.yanshu.entity.User;
import cn.yanshu.service.IUserService;

@Service
public class UserService extends BaseService<User> implements IUserService {
    

	
	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return  userMapper.login(user);
	}


	@Override
	public int updatePwd(Serializable id, String pwd) {
		// TODO Auto-generated method stub
		Map<String,Object>  map=new  HashMap<String, Object>();
		map.put("id", id);
		map.put("pwd",pwd);
		return  userMapper.updatePwd(map);
	}


}
