package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import jdk.nashorn.internal.runtime.ECMAErrors;
import poly.dto.AnounceDTO;
import poly.dto.QaDTO;

@Mapper("AnounceMapper")
public interface AnounceMapper {

	public List<AnounceDTO> getAnounceList() throws Exception;

	
}

