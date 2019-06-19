package poly.service;

import java.util.HashMap;
import java.util.List;

import poly.dto.RestDTO;

public interface ICamService {

	public List<RestDTO> getCamList()throws Exception;

	public List<RestDTO> getcamAnalysis(RestDTO cDTO) throws Exception;

	public RestDTO getglamcamdetail(RestDTO cDTO)throws Exception;

	public int getNoticeListTotalCount() throws Exception;

	public List<RestDTO> getglamcamList(HashMap<String, Integer> hMap) throws Exception;

	public List<RestDTO> getSelect(RestDTO cDTO) throws Exception;
	


}
