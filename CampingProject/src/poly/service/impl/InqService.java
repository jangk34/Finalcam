package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.InqDTO;
import poly.persistance.mapper.InqMapper;
import poly.service.IInqService;

@Service("InqService")
public class InqService implements IInqService {
	
	@Resource(name="InqMapper")
	private InqMapper inqMapper;

	@Override
	public List<InqDTO> getInqList() throws Exception {
		return inqMapper.getInqList();
	}




	

}
