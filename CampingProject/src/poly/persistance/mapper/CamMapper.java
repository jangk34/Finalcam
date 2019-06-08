package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import poly.dto.RestDTO;

@Mapper("CamMapper")
public interface CamMapper {

	public List<RestDTO> getCamList() throws Exception;

	public List<RestDTO> getcamAnalysis(RestDTO cDTO) throws Exception;

	public RestDTO getglamcamdetail(RestDTO cDTO) throws Exception;



	


	
}

