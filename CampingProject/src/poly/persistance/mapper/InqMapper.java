package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import jdk.nashorn.internal.runtime.ECMAErrors;
import poly.dto.AnounceDTO;
import poly.dto.InqDTO;
import poly.dto.QaDTO;

@Mapper("InqMapper")
public interface InqMapper {

	public List<InqDTO> getInqList() throws Exception;

}

