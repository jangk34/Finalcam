package poly.service;

import java.util.List;

import poly.dto.RestDTO;

public interface ICamService {

	public List<RestDTO> getCamList()throws Exception;

	public List<RestDTO> getcamAnalysis(RestDTO cDTO) throws Exception;



	



}