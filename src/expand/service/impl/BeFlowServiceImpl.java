package expand.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import expand.service.BeFlowService;
import mapper.BeFlowMapper;
import model.BeFlow;

@Service
public class BeFlowServiceImpl implements BeFlowService{
	
	@Autowired
	BeFlowMapper beFlowMapper;
	
	public List<BeFlow> findStepNameByid(){
		return beFlowMapper.findStepnameByid();
	}
}
