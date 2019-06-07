package poly.persistance.mapper;

import java.util.List;

import config.Mapper;
import jdk.nashorn.internal.runtime.ECMAErrors;
import poly.dto.MainDTO;
import poly.dto.QaDTO;

@Mapper("MainMapper")
public interface MainMapper {

	public List<MainDTO> getMainList() throws Exception;

	public int insertMain(MainDTO mDTO) throws Exception;

	public MainDTO getMainLogin(MainDTO mDTO) throws Exception;
}

