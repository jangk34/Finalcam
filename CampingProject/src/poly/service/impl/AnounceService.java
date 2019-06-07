package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.AnounceDTO;
import poly.dto.QaDTO;
import poly.persistance.mapper.AnounceMapper;
import poly.persistance.mapper.QaMapper;
import poly.service.IAnounceService;
import poly.service.IQaService;

@Service("AnounceService")
public class AnounceService implements IAnounceService {
	
	@Resource(name="AnounceMapper")
	private AnounceMapper anounceMapper;

	@Override
	public List<AnounceDTO> getAnounceList() throws Exception {
		return anounceMapper.getAnounceList();
	}



	
	
	
	
	
		
		

}
