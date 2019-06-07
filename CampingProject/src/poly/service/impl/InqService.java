package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.AnounceDTO;
import poly.dto.InqDTO;
import poly.dto.QaDTO;
import poly.persistance.mapper.AnounceMapper;
import poly.persistance.mapper.QaMapper;
import poly.persistance.mapper.InqMapper;
import poly.service.IAnounceService;
import poly.service.IQaService;
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
