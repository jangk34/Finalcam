package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import jdk.nashorn.internal.runtime.ECMAErrors;
import poly.dto.QaDTO;

@Mapper("QaMapper")
public interface QaMapper {

	public List<QaDTO> getQaList() throws Exception;


	

	
}

