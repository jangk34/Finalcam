package poly.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.dto.RecommendDTO;
import poly.persistance.mapper.RecommendMapper;
import poly.service.IRecommendService;

	@Service("RecommendService")
	public class RecommendService implements IRecommendService {
	
		@Resource(name="RecommendMapper")
		private RecommendMapper recommendMapper;

		@Override
		public List<RecommendDTO> getRecommedList() throws Exception {
			return recommendMapper.getRecommendList();
		}





	
	
}
