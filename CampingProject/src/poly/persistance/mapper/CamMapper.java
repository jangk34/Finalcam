package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import jdk.nashorn.internal.runtime.ECMAErrors;
import poly.dto.RestDTO;
import poly.dto.RecommendDTO;

@Mapper("CamMapper")
public interface CamMapper {

	public List<RestDTO> getCamList() throws Exception;

	public List<RestDTO> getcamAnalysis(RestDTO cDTO) throws Exception;




	
}

