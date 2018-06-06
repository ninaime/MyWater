package expand.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import expand.service.BeOrderuserService;
import mapper.BeOrderuserMapper;
import model.BeOrderuser;

@Service
public class BeOrderuserServiceImpl implements BeOrderuserService{
	
	@Autowired
	BeOrderuserMapper beOrderuserMapper;
	
	public int addBeOrderuser(BeOrderuser beOrderuser) {
		return beOrderuserMapper.addBeOrderuser(beOrderuser);
	}
}
