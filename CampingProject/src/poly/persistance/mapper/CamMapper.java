package poly.persistance.mapper;

import java.util.HashMap;
import java.util.List;

import config.Mapper;
import poly.dto.RestDTO;

@Mapper("CamMapper")
public interface CamMapper {

	public List<RestDTO> getCamList() throws Exception;

	public List<RestDTO> getcamAnalysis(RestDTO cDTO) throws Exception;

	public RestDTO getglamcamdetail(RestDTO cDTO) throws Exception;

	public int getNoticeListTotalCount() throws Exception;

	public List<RestDTO> getglamcamList(HashMap<String, Integer> hMap);

	public List<RestDTO> getSelect(RestDTO cDTO) throws Exception;



	


	
}

