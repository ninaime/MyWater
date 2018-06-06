package expand.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import expand.service.BeApplyService;
import mapper.BeApplyMapper;
import model.BeApply;

@Service
public class BeApplyServiceImpl implements BeApplyService{
	
	@Autowired
	BeApplyMapper beApplyMapper;
	
	public List<BeApply> findAll(int id) {
		return beApplyMapper.findAll(id);
	}
	
	public int count(int id ) {
		return beApplyMapper.count(id);
	}
	
	public List<BeApply> findExpand() {
		return beApplyMapper.findExpand();
	}
	
	public List<BeApply> findExpandByType(){
		return beApplyMapper.findExpandByType();
	}
	
	public List<BeApply> findExpandByid(){
		return beApplyMapper.findExpandByid();
	}
	
	public List<BeApply> findExpandByCG(){
		return beApplyMapper.findExpandByCG();
	}
	
	public List<BeApply> findExpandByEnd(){
		return beApplyMapper.findExpandByEnd();
	}
}
