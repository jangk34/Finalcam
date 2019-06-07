package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.QaDTO;
import poly.persistance.mapper.QaMapper;
import poly.service.IQaService;

@Service("QaService")
public class QaService implements IQaService {
	
	@Resource(name="QaMapper")
	private QaMapper qaMapper;

	@Override // 오버라이드는 메소드 기능 재정의
	public List<QaDTO> getQaList() throws Exception {
		return qaMapper.getQaList(); // 클래스명.dto의 메소드명
	}
	
	
	
	
		
		

}
