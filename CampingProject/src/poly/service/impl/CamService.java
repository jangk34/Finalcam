package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.RestDTO;
import poly.dto.RecommendDTO;
import poly.persistance.mapper.CamMapper;
import poly.persistance.mapper.RecommendMapper;
import poly.service.ICamService;
import poly.service.IRecommendService;

	@Service("CamService")
	public class CamService implements ICamService {
	
		@Resource(name="CamMapper")
		private CamMapper camMapper;

		@Override
		public List<RestDTO> getCamList() throws Exception {
			// TODO Auto-generated method stub
			return camMapper.getCamList();
		}








	
	
}
