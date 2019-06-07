package poly.service;

import java.util.List;

import poly.dto.MainDTO;

public interface IMainService {

	public List<MainDTO> getMainList() throws Exception;

	public int insertMain(MainDTO mDTO) throws Exception;

	public MainDTO getMainLogin(MainDTO mDTO) throws Exception;

	

}
