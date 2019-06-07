package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.MainDTO;
import poly.persistance.mapper.MainMapper;
import poly.service.IMainService;

@Service("MainService")
public class MainService implements IMainService{
	
	@Resource(name="MainMapper")
	private MainMapper mainMapper;  // ser~여기까지 직접써줘야함

	@Override
	public List<MainDTO> getMainList() throws Exception {
		
		return mainMapper.getMainList();
	}

	@Override
	public int insertMain(MainDTO mDTO) throws Exception {
		return mainMapper.insertMain(mDTO);
	}

	@Override
	public MainDTO getMainLogin(MainDTO mDTO) throws Exception {
		return mainMapper.getMainLogin(mDTO);
	}
}
